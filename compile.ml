open Format
open Mips
open Ast

(* Exceção por lançar quando uma variável (local ou global) é mal utilizada *)
exception ErrorCompiling of string

(* Tamanho da frame, em byte (cada variável local ocupa 8 bytes) *)
let frame_size = ref 0

(* As variáveis globais estão arquivadas numa HashTable *)
let (vars : (string, unit) Hashtbl.t) = Hashtbl.create 32

(* Utilizamos uma tabela associativa cujas chaves são as variáveis locais
   (cadeias de caracteres) e onde o valor associado é a posição
   relativamente  a $fp (em bytes) *)
   module StrMap = Map.Make(String)
  
let rec compile_expr = function
  Cst c ->
  begin
      match c with
      Int i -> 
        li t0 i ++
        push t0
      | Var v ->
      begin
        if Hashtbl.mem vars v then
          lw t0 alab v ++
          push t0
        else raise (ErrorCompiling ("Undefined variable '"^v^"'."))
      end
  end
  |Binop (Add, e1, e2) -> (*Adição*)
    compile_expr e1 ++
    compile_expr e2 ++
    pop t0 ++
    pop t1 ++
    add t0 t0 oreg t1 ++
    push t0
  |Binop (Sub, e1, e2) -> (*Subtração*)
    compile_expr e1 ++
    compile_expr e2 ++
    pop t0 ++
    pop t1 ++
    sub t0 t0 oreg t1 ++
    push t0
  (*|Binop (Mul, e1, e1) -> (*Multiplicação*)
  |Binop (Div, e1, e1) -> (*Divisão*)*)

(* Compilação de uma instrução *)
let compile_stmt = function
  | Set (v, e) ->
    if not (Hashtbl.mem vars v) then begin
      Hashtbl.replace vars v ();
      compile_expr e ++
      pop t0 ++
      move v t0
    end
    else begin
     raise (ErrorCompiling ("Already defined variable '"^v^"'."));
     nop
    end
  | Print e ->
    compile_expr e ++
    pop t0 ++
    move a0 t0 ++
    li v0 1 ++(*codigo de print_int*)
    syscall


(* Compila o programa p e grava o código no ficheiro ofile *)
let compile_program p ofile =
  let code = List.map compile_stmt p in
  let code = List.fold_right (++) code nop in
  let p =
    { text =
        label "main" ++
        code ++
        li v0 10 ++
        syscall;
      data =
        Hashtbl.fold (fun x _ l -> label x ++ space 4 ++ l ) vars (label "newline" ++ asciiz "\n")
    }
  in
  let f = open_out ofile in
  let fmt = formatter_of_out_channel f in
  Mips.print_program fmt p;
  (*  "flush" do buffer para garantir que tudo fica escrito antes do fecho
       deste  *)
  fprintf fmt "@?";
  close_out f