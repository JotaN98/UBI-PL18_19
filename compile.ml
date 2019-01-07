open Format
open Mips
open Ast

(* Exceção por lançar quando uma variável (local ou global) é mal utilizada *)
exception VarUndef of string

(* As variáveis globais estão arquivadas numa HashTable *)
let (vars : (string, unit) Hashtbl.t) = Hashtbl.create 32

(* Utiliza-se  uma tabela associativa cujas chaves são as variáveis locais
   (strings) cujo valor associado é a posição da variável relativamente a $fp (em bytes) *)
module StrMap = Map.Make(String)

(* Compilação de uma expressão *)
let compile_expr =
  (* Função recursiva local de compile_expr utilizada para gerar o código
     máquina da árvore de sintaxe  abstracta associada a um valor de tipo 
     Ast.expr ; na sequência da execução deste código, o valor deve estar
     no topo da pilha *)
  let rec comprec env next = function
    | Cst i ->
        li t0 i ++ li a0 i
    | Var x ->
        nop (* POR COMPLETAR *)
    | Binop (o, e1, e2)->
        nop (* POR COMPLETAR *)
    | Letin (x, e1, e2) ->
        if !frame_size = next then frame_size := 8 + !frame_size;
        nop (* POR COMPLETAR *)
  in
  comprec StrMap.empty 0

(* Compilação de uma instrução *)
let compile_instr = function
  | Set (x, e) ->
      nop (* POR COMPLETAR *)
  | Print e ->
      nop (* POR COMPLETAR *)


(* Compila o programa p e grava o código no ficheiro ofile *)
let compile_program p ofile =
  let code = List.map compile_instr p in
  let code = List.fold_right (++) code nop in
  let p =
    { text =
        glabel "main" ++
        nop (* POR COMPLETAR *) ++
        code ++
        nop (* POR COMPLETAR *);
      data =
        Hashtbl.fold (fun x _ l -> label x ++ dquad [1] ++ l) genv
          (label ".Sprint_int" ++ string "%d\n")
    }
  in
  let f = open_out ofile in
  let fmt = formatter_of_out_channel f in
  Mips.print_program fmt p;
  (*  "flush" do buffer para garantir que tudo fica escrito antes do fecho
       deste  *)
  fprintf fmt "@?";
  close_out f