%{ 
    Open Ast 
%}

%token <int> INT 
%token <float> FLOAT 
%token <bool> BOOL 
%token PLUS MINUS TIMES DIV EOF NOT MINOR BIGGER EQUALS AND OR EQMINOR EQBIGGER DIFFERENT

%left INT FLOAT BOOL
%left PLUS MINUS
%nonassoc NOT
%nonassoc MINOR BIGGER EQUALS AND OR EQMINOR EQBIGGER DIFFERENT
%left TIMES DIV

%start main

%type <Ast.expr> main
%%
main:
    e = expr EOF { e }
    ;

const:
    i = INT {I i}
    |f = FLOAT {F f}
    |b = BOOL {B b}
    ;

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