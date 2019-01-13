open Format
open Lexing
open Lexer
open Parser
open Compile

let parse_only = ref false

let usage = "Usage: arith file.ar"

(* Nome dos ficheiros fonte e alvo *)
let ifile = 
let ifile = ref None in
	let set_file s =
	if not (Filename.check_suffix s ".ar") then
		raise (Arg.Bad "Please use a .ar file");
	ifile := Some s
	in
	Arg.parse [] set_file usage;
	match !ifile with Some f -> f | None -> Arg.usage [] usage; exit 1

let localization pos =
	let l = pos.pos_lnum in
	let c = pos.pos_cnum - pos.pos_bol + 1 in
	eprintf "File \"%s\", line %d, characters %d-%d:\n" ifile l (c-1) c 

let () = 
	if ifile="" then begin eprintf "No file to compile\n@?"; exit 1 end;

	(* Abertura do ficheiro fonte em modo leitura *)
	let f = open_in ifile in

	(* Criação do buffer de análise léxica *)
	let buf = Lexing.from_channel f in

	 try
	let p = Parser.pro Lexer.token buf in
	close_in f;
	compile_program p "ofile.s";
	with
		| Lexer.ErrorLexing c ->
	(* Erro léxico. Recupera-se a posição absoluta e converte-se para número 
			de linha *)
			localization (Lexing.lexeme_start_p buf);
			eprintf "Error while reading file: %s@." c;
			exit 1
		| Parser.Error ->
	(* Erro sintáctio. Recupera-se a posição e converte-se para número 
			de linha *)
			localization (Lexing.lexeme_start_p buf);
			eprintf "Syntax error@.";
			exit 1
		| Compile.ErrorCompiling c ->
			localization (Lexing.lexeme_start_p buf);
			eprintf "Compilation error: %s@." c;
			exit 1




