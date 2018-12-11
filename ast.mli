(* Sintaxe abstrata*)
type expr =
  Int of Int
 |Binop of binop * expr
 
type binop = Add | Sub | Mul | Div