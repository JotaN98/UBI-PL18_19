type cst = 
   Int of int
  | Var of string

type binop = 
  Add 
  | Sub 
  (*| Mul 
  | Div*)

type expr =
  Cst of cst
 | Binop of binop * expr * expr
 
 type stmt =  
  Set of string * expr
  | Eval of expr
  | Print of expr

and pro = stmt list