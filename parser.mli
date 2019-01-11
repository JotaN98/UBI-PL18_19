exception Error

type token = 
  | TIMES
  | SET
  | PRINT
  | PLUS
  | MINUS
  | INT of (int)
  | EOF
  | DIV


val main: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr)