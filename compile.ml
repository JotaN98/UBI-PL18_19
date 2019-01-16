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
  Typ t ->
  begin
      match t with
      Int i -> 
        comment ("storing int")++
        li t0 i ++
        push t0
      | Var v ->
      begin
        if Hashtbl.mem vars v then
          comment ("storing var")++
          lw t0 alab v ++
          push t0
        else raise (ErrorCompiling ("Undefined variable '"^v^"'."))
      end
  end
  |Binop (Add, e1, e2) -> (*Adição*)
    comment ("adding")++
    compile_expr e1 ++
    compile_expr e2 ++
    pop t0 ++
    pop t1 ++
    add t0 t0 oreg t1 ++
    push t0
  |Binop (Sub, e1, e2) -> (*Subtração*)
    comment ("subtracting")++
    compile_expr e1 ++
    compile_expr e2 ++
    pop t0 ++
    pop t1 ++
    sub t0 t1 oreg t0 ++
    push t0
  |Binop (Mul, e1, e2) -> (*Multiplicação*)
    comment ("multiplying")++
    compile_expr e1 ++
    compile_expr e2 ++
    pop t0 ++
    pop t1 ++
    mul t0 t0 oreg t1 ++
    push t0
  |Binop (Div, e1, e2) -> (*Divisão*)
    comment ("dividing")++
    compile_expr e1 ++
    compile_expr e2 ++
    pop t0 ++
    pop t1 ++
    div t0 t1 oreg t0 ++
    push t0

(* Compilação de uma instrução *)
let compile_stmt = function
  | Set (v, e) -> (* Definir uma variavél*)
  begin
    if not (Hashtbl.mem vars v) then begin
      Hashtbl.replace vars v ();
      comment ("setting") ++
      compile_expr e ++
      pop t0 ++
      sw t0 alab v
    end
  else begin raise(ErrorCompiling("Variable already defined '"^v^"'.")); nop end
  end
  | Change (v, e) -> (*Redefinir um variável*)
  begin
    if Hashtbl.mem vars v then
      begin
      Hashtbl.replace vars v ();
      comment ("redefining") ++
      compile_expr e ++
      pop t0 ++
      sw t0 alab v
      end
    else begin raise(ErrorCompiling("Variable undefined '"^v^"' .")); nop end
  end
  | Print e -> (*Imprimir*)
    comment ("printing")++
    compile_expr e ++
    pop t0 ++
    move a0 t0 ++
    li v0 1 ++(*codigo de print_int*)
    syscall ++
    la a0 alab "newline" ++
    li v0 4 ++
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