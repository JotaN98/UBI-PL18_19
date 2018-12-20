%{ 
    Open Ast 
%}

%token <int> INT 
%token <float> FLOAT 
%token <bool> BOOL 
%token ID
%token EOF 
%token PLUS MINUS TIMES DIV 
%token NOT 
%token MINOR BIGGER EQUALS EQMINOR EQBIGGER DIFFERENT
%token AND OR
%token EQ

%token SET
%token IF THEN END ELSE
%token WHILE REPEAT BREAK STOPREPEAT
%token PRINT

%left INT FLOAT BOOL
%left PLUS MINUS
%nonassoc NOT
%nonassoc MINOR BIGGER EQUALS AND OR EQMINOR EQBIGGER DIFFERENT
%left TIMES DIV

%start main

%type <Ast.expr> main
%%
main:
    s = stmt EOF { s }
    ;

const:
    i = INT {I i}
    |f = FLOAT {F f}
    |b = BOOL {B b}
    ;

stmt:
    SET string = ID EQ e = expr { Set (string, e)}
   | e = expr {Eval e}
   | PRINT e = expr { Print e}
   | IF e = expr THEN s = stmt END { If (e,s)}
   | IF e = expr THEN s1 = stmt ELSE s2 = stmt END { IfElse (e,s1,s2)}
   | WHILE e = expr REPEAT s = stmt STOPREPEAT {While (e,s)}

expr:
    c= const {Cst c}
    | e1=expr o=op e2=expr {Binop (op, e1, e2)}
    | MINUS e1=expr { Unop (uNeg,e1)}
    | NOT e1=expr { Unop (uNot,e1)}
    ;

%inline op:
    PLUS {Add}
    |MINUS {Sub}
    |TIMES {Mul}
    |DIV {Div}
    |MINOR {Minor}
    |BIGGER {Bigger}
    |EQUALS {Equals}
    |AND {And}
    |OR {Or}
    |EQMINOR {Eqminor}
    |EQBIGGER {Eqbigger}
    |DIFFERENT {Different}
    ;

(*menhir --interpret --interpret-show-cst parser.mly < test.in*)