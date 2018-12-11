(* Sintaxe abstrata*)
type unop = uNeg | uNot

type binop = Add | Sub | Mul | Div
 | Minor | Bigger | Equals | And | Or 
 | Eqminor | Eqbigger | Different

type cst = 
  Int of I
 |Float of F
 |Bool of B


type expr =
  Cst of cst
 |Binop of binop * expr * expr
 |Unop of unop * expr
 
