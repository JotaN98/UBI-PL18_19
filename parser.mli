exception Error

type token = 
  | SET
  | PRINT
  | PLUS
  | MINUS
  | INT of (int)
  | ID of (string)
  | EQ
  | EOF
  | COLON


val pro: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.pro)