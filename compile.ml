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

let rec expr_of_string = function
(* Compilação de uma expressão *)
  Cst i ->
  begin
  match i with
    Int i -> string_of_int i
    (*| Var i -> i *)
  end
  | Binop (o, e1, e2) ->
    begin
      let a = expr_to_string e1 in
      let b = expr_to_string e2 in
      match o with
      Add -> (a ^ "+" ^ y)
      |Sub -> (a ^ "-" ^ y)
      (*|Times -> (a ^ "*" ^b)
      |Div -> (a ^ "/" ^b)*)
    end
  
let compile_expr =  
  (* Função recursiva local de compile_expr utilizada para gerar o código
   máquina da árvore de sintaxe  abstracta associada a um valor de tipo 
   Ast.expr ; na sequência da execução deste código, o valor deve estar
   no topo da pilha *)
  let rec comprec env next = function
    Cst c ->
    begin
        match c with
        Int i -> li t0 i ++
        push t0
        (*| Var v ->
        begin
          if Hashtbl.mem vars v then
            lw t0 v ++
            push t0
          else raise (Compile_Error ("Undefined variable '"^i^"'."))
        end*)
    end
    |Binop (Add, e1, e2) -> (*Adição*)
      comprec env next e1 ++
      comprec env next e2 ++
      pop t0 ++
      pop t1 ++
      addr t0 t0 t1 ++
      push t0
    |Binop (Sub, e1, e1) -> (*Subtração*)
      compile_expr env next e1 ++
      compile_expr env next e2 ++
      pop t0 ++
      pop t1 ++
      subr t0 t0 t1 ++
      push t0
    (*|Binop (Mul, e1, e1) -> (*Multiplicação*)
    |Binop (Div, e1, e1) -> (*Divisão*)*)
  in
  comprec StrMap.empty 0

(* Compilação de uma instrução *)
let compile_instr = function
  (*| Set (x, e) ->
      nop  *)
  | Print e ->
    compile_expr e ++
    pop t0 ++
    move a0 t0 ++
    li v0 1 ++(*codigo de print_int*)
    syscall


(* Compila o programa p e grava o código no ficheiro ofile *)
let compile_program p ofile =
  let code = List.map compile_instr p in
  let code = List.fold_right (++) code nop in
  let p =
    { text =
        glabel "main" ++
        code ++
        li v0 10 ++
        syscall
      data =
        Hashtbl.fold (fun x _ l -> label x ++ space 4 ++ l ) variables (label "newline" ++ asciiz "\n")
    }
  in
  let f = open_out ofile in
  let fmt = formatter_of_out_channel f in
  Mips.print_program fmt p;
  (*  "flush" do buffer para garantir que tudo fica escrito antes do fecho
       deste  *)
  fprintf fmt "@?";
  close_out f