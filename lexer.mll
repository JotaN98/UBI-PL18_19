{
  open Parser

  let kwd_tbl = ["set", SET; "print", PRINT;
   "if", IF; "then", THEN; "end", END; "else" ELSE
    "while", WHILE; "repeat", REPEAT; "break", BREAK;
    "stoprepeat", STOPREPEAT;]

  let id_or_kwd s = try List.assoc s kwd_tbl with _ -> ID s

  let newline lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
      { pos with pos_lnum = pos.pos_lnum + 1; pos_bol = pos.pos_cnum }
}

let integer = ['0'-'9']+
let digit = ['0' - '9']
let space = [' ' '\t']
let letter = ['a' - 'z' 'A'-'Z']
let ident = letter (letter | digit)*

rule token = parse 
  | '\n'    { newline lexbuf; token lexbuf }
  | space+ { token lexbuf }
  | ident as id { id_or_kwd id}
  | integer as i {INT (int_of_string i)}
  | float as f {FLOAT (float_of_string f)}
  | '+' {PLUS}
  | '-' {MINUS}
  | '*' {TIMES}
  | '/' {DIV}
  | '=' {EQ} 
  | '!' {NOT} 
  | '<' {MINOR}
  | '>' {BIGGER}
  | "==" {EQUALS}
  | "<=" {EQMINOR}
  | ">=" {EQBIGGER}
  | "!=" {DIFFERENT}
  | "&&" {AND}
  | "||" {OR}
  | eof {EOF} 
  | _ as c  { raise (Lexing_error c) }