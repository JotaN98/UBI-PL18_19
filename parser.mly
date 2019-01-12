%{
  open Ast
%}

%token <int> INT 
(*%token <float> FLOAT 
%token <bool> BOOL*) 

(*%token ID*)
%token EOF 
%token PLUS MINUS TIMES DIV 
(*%token NOT 
%token MINOR BIGGER EQUALS EQMINOR EQBIGGER DIFFERENT
%token AND OR
%token EQ*)

%token SET
(*%token IF THEN END ELSE
%token WHILE REPEAT BREAK STOPREPEAT*)
%token PRINT

(*
%left THEN
%left ELSE
*)
(*%left AND OR MINOR BIGGER EQUALS EQMINOR EQBIGGER DIFFERENT*)
%left PLUS MINUS
%left TIMES DIV
(*%nonassoc NEG*)

%start pro

%type <Ast.pro> pro
%%
pro:
    s = stmts EOF { List.rev s }
    ;

stmts:
    s= stmt {[s]}
    | s1= stmts s2=stmt {s2::s1}
    ;

const:
    i = INT {Int i}
    (*|f = FLOAT {F f}
    |b = BOOL {B b}
    | id = ID {Var id}*)
    ;

stmt:
    e = expr {Eval e}
   | PRINT e = expr { Print e}
   (*
       SET id = ID EQ e = expr { Set (id, e)}
   | IF e = expr THEN s = stmt END { If (e,s)}
   | IF e = expr THEN s1 = stmt ELSE s2 = stmt END { IfElse (e,s1,s2)}
   | WHILE e = expr REPEAT s = stmt STOPREPEAT {While (e,s)}*)
    ;

expr:
    c= const {Cst c}
    | e1=expr o=op e2=expr {Binop (o, e1, e2)}
   (*| MINUS e=expr %prec NEG {Binop (Sub, Cst 0, e)}
    | NOT e=expr {Unot e}*)
    ;

%inline op:
    PLUS {Add}
    |MINUS {Sub}
    |TIMES {Mul}
    |DIV {Div}
    (*|MINOR {Minor}
    |BIGGER {Bigger}
    |EQUALS {Equals}
    |AND {And}
    |OR {Or}
    |EQMINOR {Eqminor}
    |EQBIGGER {Eqbigger}
    |DIFFERENT {Different}*)
    ;

(*menhir --interpret --interpret-show-cst parser.mly < test.in*)