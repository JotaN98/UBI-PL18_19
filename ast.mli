type cst = 
  | Int of I
  (*|Float of F
  |Bool of B
  | Var of string *)

type binop =
  | Add
  | Sub
  | Mul 
  | Div
 (*| Minor | Bigger | Equals | And | Or 
 | Eqminor | Eqbigger | Different*)

type expr =
  Cst of cst
 (*|Unot of expr*)
 | Binop of binop * expr * expr
 
 type stmt =  
  Set of string * expr
  | Eval of expr
  | Print of expr
  (*if   e     then    s     end*)
  (*|If of expr * stmt
  (*if e then s end else s end*)
  |IfElse of expr * stmt * stmt
  (*while     e   repeat   s     stoprepeat*)
  |While of expr * stmt*)