type typ = 
   Int of int
  | Var of string

type binop = 
  Add 
  | Sub 
  | Mul 
  | Div

type expr =
  Typ of typ
 | Binop of binop * expr * expr
 
 type stmt =  
  Set of string * expr
  | Change of string * expr
  | Print of expr

and pro = stmt list