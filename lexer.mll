{
  (*COnverte o ficheiro para tokens*)
  open Lexing
  open Parser

  exception ErrorLexing of string

  let kwd_tbl = ["print", PRINT; "set", SET; "as", AS; "change", CHANGE; "to", TO;]

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
  | '\n' { newline lexbuf; token lexbuf }
  | '\r' { token lexbuf }
  | ident as id { id_or_kwd id}
  | space+ { token lexbuf }
  | integer as i {INT (int_of_string i)}
  | "+" {PLUS}
  | "-" {MINUS}
  | "*" {TIMES}
  | "/" {DIV}
  | "," {COMMA}
  | eof {EOF} 
  | _ as c {raise (let x = (Printf.sprintf "%c" c) in (ErrorLexing ("Unkown character " ^ x)))}
