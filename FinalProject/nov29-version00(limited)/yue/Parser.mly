/* File parser.mly */

%{ (* header *)
open Abstractsyntax
%} /* declarations */

%token ASSIGN
%right ASSIGN

%token NULL EOF PROC_DECL VAR_DECL MALLOC  /* lexer tokens EOF */
%token SKIP WHILE IF ELSE PARALLEL ATOM 
%token EQUALITY LT
%token COLON SEMICOLON
%token MINUS LPAREN RPAREN LBRACE RBRACE
%token <string> VAR FIELD
%token <int> ONE
%token <bool> BOOL
%start prog                   /* the entry point of the entire parser(tree structure)*/
%type <Abstractsyntax.cmd> prog
%type <Abstractsyntax.cmd> cmd
%type <Abstractsyntax.expression> expr
%type <Abstractsyntax.bool_expression> boolean /* want boolean here */
(* %right COLON EQUALITY     /* shift rule */ *)
%left MINUS

%token DOT
%left DOT


%% /* rules */

prog :
    | l = cmd EOF { l }


expr  :
    | f=FIELD { Field f }
    | LPAREN e=expr RPAREN {e}
    | n=ONE {One n} (*this is the implementation of One*)
    | e1=expr MINUS e2=expr {Minus (e1, e2)}
    (* | MINUS e1=expr e2=expr {Minus (e1, e2)} *)
    | NULL {Null} (*Null, Var, and Dot all belong to location category*)
    | v=VAR { Var v}
    | e1=expr DOT e2=expr {Dot (e1, e2)}
    | PROC_DECL v=VAR COLON c=cmd {Procedure (v, c)}

boolean :
    | b = BOOL {Bool b}
    | e1=expr EQUALITY e2=expr {Expression (e1, EQ, e2)}
    | e1=expr LT e2=expr {Expression (e1, LT, e2)}
cmd  :
    | VAR_DECL v=VAR SEMICOLON c=cmd {VarDecl (v, c)}
    | e1=expr LPAREN e2=expr RPAREN {Call (e1, e2)}
    | MALLOC LPAREN v=VAR RPAREN {Malloc v} (*Dynamic Object Allocation*)
    | v=VAR ASSIGN e=expr {Assign (v, e)} (*Variable Assignment*)
    | e1=expr DOT e2=expr ASSIGN e3=expr {FieldAssign (e1, e2, e3)}
    | SKIP {Skip} (*all the below belong to sequential control*)
    | LBRACE c1=cmd SEMICOLON c2=cmd RBRACE {Sequence (c1, c2)}
    | WHILE b1=boolean c1=cmd {While (b1, c1)} (*| WHILE LPAREN boolean RPAREN cmd {While (boolean, cmd)}*)
    | IF b1=boolean s1=cmd ELSE s2=cmd {If (b1, s1, s2)}
    | LBRACE c1=cmd PARALLEL c2=cmd RBRACE {Parallel (c1, c2)}
    | ATOM LPAREN l=cmd RPAREN {Atom l}


