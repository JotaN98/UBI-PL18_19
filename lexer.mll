{
  open Parser

  let kwd_tbl = ["print", PRINT;](*
   "if", IF; "then", THEN; "end", END; "else" ELSE
    "while", WHILE; "repeat", REPEAT; "break", BREAK;
    "stoprepeat", STOPREPEAT;]

  let id_or_kwd s = try List.assoc s kwd_tbl with _ -> ID s
*)
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

  (*
  | ident as id { id_or_kwd id}
  | float as f {FLOAT (float_of_string f)}
  | '=' {EQ} 
  | '!' {NOT} 
  | '<' {MINOR}
  | '>' {BIGGER}
  | "==" {EQUALS}
  | "<=" {EQMINOR}
  | ">=" {EQBIGGER}
  | "!=" {DIFFERENT}
  | "&&" {AND}
  | "||" {OR}*)

rule token = parse 
  | '\n'    { newline lexbuf; token lexbuf }
  | space+ { token lexbuf }
  | integer as i {INT (int_of_string i)}
  | '+' {PLUS}
  | '-' {MINUS}
  | '*' {TIMES}
  | '/' {DIV}
  | eof {EOF} 
  | _ as c  { raise (Lexing_error c) }