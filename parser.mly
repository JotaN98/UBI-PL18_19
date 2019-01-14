%{
  open Ast
%}

%token <int> INT 
%token <string> ID

%token EOF
%token COMMA 
%token PLUS MINUS
%token TIMES DIV 
%token EQ

%token SET
%token PRINT

%left PLUS MINUS
%left TIMES DIV

%start pro

%type <Ast.pro> pro
%%
pro:
    s = stmts EOF { List.rev s }
    ;

stmts:
    s= stmt {[s]}
    | s1= stmts COMMA s2=stmt {s2::s1}
    ;

typ:
    i = INT {Int i}
    | id = ID {Var id}
    ;

stmt:
    SET id = ID EQ e = expr { Set (id, e)}
   | PRINT e = expr { Print e}
   ;

expr:
    t= typ {Typ t}
    | e1=expr o=op e2=expr {Binop (o, e1, e2)}
    ;

%inline op:
    PLUS {Add}
    |MINUS {Sub}
    |TIMES {Mul}
    |DIV {Div}
    ;