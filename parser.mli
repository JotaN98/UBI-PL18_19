exception Error

type token = 
  | TO
  | TIMES
  | SET
  | PRINT
  | PLUS
  | MINUS
  | INT of (int)
  | ID of (string)
  | EOF
  | DIV
  | COMMA
  | CHANGE
  | AS


val pro: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.pro)