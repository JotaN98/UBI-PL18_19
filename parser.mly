%{ 
    Open Ast 
}%

%token <int> INT 
%token PLUS MINUS TIMES DIV EOF
%left INT
%left PLUS MINUS
%left NEG
%left TIMES DIV

%start <Ast.expr> main

main:
    e = expr EOF { e }