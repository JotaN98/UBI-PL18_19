exception Error

type token = 
  | TIMES
  | SET
  | PRINT
  | PLUS
  | MINUS
  | INT of (int)
  | ID of (string)
  | EQ
  | EOF
  | DIV
  | COMMA


val pro: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.pro)