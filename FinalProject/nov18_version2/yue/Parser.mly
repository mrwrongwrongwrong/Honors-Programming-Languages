/* File parser.mly */

%{ (* header *)
open AbstractSyntax
%} /* declarations */

%token EOF NULL PROC_DECL VAR_DECL MALLOC  /* lexer tokens */
%token SKIP WHILE IF ELSE PARALLEL ATOM PRINT 
%token EQUALITY LT
%token COLON SEMICOLON ASSIGN DOT
%token MINUS LPAREN RPAREN LBRACE RBRACE
%token <string> VAR FIELD
%token <int> NUM
%token <bool> BOOL
%start prog                   /* the entry point of the entire parser(tree structure)*/
%type <AbstractSyntax.prog> prog  
%type <AbstractSyntax.cmd> cmd
%type <AbstractSyntax.expression> expr
%type <AbstractSyntax.bool_expression> boolean /* want boolean here */
(* %right COLON EQUALITY     /* shift rule */ *)
%left PLUS MINUS          /* lowest precedence  */
%left TIMES DIV           /* medium precedence  */
(* %nonassoc UMINUS          /* highest precedence */ *)

%% /* rules */

(* abstract syntax *)
(* the left side is input format, then in {}, it contains the way how we parse it*)
prog :
    l = cmd EOF {cmd l}

expr  :
    | f=FIELD { Field f }
    | LPAREN e=expr RPAREN {e}
    | n=NUM {Num n} (*this is the implementation of One*)
    | e1=expr MINUS e2=expr {MINUS (e1, e2)}
    | NULL {Null} (*Null, Var, and Dot all belong to location category*)
    | v=VAR { Var v}
    | e1=expr DOT e2=expr {Location (e1, e2)}
    | PROC_DECL v=VAR COLON c=cmd {Proc (v, c)}
(*http://gallium.inria.fr/~fpottier/menhir/manual.pdf*)

(*be careful with the implementation of boolean*)
boolean :
      b = BOOL {Bool b}
    | e1=expr EQUALITY e2=expr {Equal (e1, e2)}
    | e1=expr LT e2=expr {Lt (e1, e2)}

cmds :
      c1=cmd SEMICOLON c2=cmds {Commands (c1, c2)}
    | {Empty}

cmd  :
      VAR_DECL v=VAR SEMICOLON c=cmd {VariableDeclaration (v, c)}
    | e1=expr LPAREN e2=expr RPAREN {Call (e1, e2)}
    | MALLOC LPAREN v=VAR RPAREN {Malloc v} (*Dynamic Object Allocation*)
    | v=VAR ASSIGN e=expr {Assign (v, e)} (*Variable Assignment*)
    | e1=expr DOT e2=expr ASSIGN e3=expr {FieldAssign (e1, e2, e3)}
    | SKIP {Skip} (*all the below belong to sequential control*)
    | LBRACE c1=cmd SEMICOLON c2=cmd RBRACE {Sequence (c1, c2)}
    | WHILE boolean cmd {While (boolean, cmd)} (*| WHILE LPAREN boolean RPAREN cmd {While (boolean, cmd)}*)
    | IF boolean s1=cmd ELSE s2=cmd {If (boolean, s1, s2)}
    | LBRACE c1=cmd PARALLEL c2=cmd RBRACE {Parallel (c1, c2)}
    | ATOM LPAREN l=cmd RPAREN {Atom l}


