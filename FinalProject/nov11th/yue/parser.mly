/* File parser.mly */

%{ (* header *)


%} /* declarations */

%token EOL MALLOC VAR_DECL PROC_DECL /* lexer tokens */
%token MINUS PLUS TIMES DIV LPAREN RPAREN LBRACE RBRACE
%token LEQ GEQ LT GT EQUALITY
%token < string > VAR FIELD
%token < int > NUM
%token <bool> BOOL
%start prog                   /* the entry point */
%type <unit> prog  
%type <int> cmds
%type <int> cmd
%type <int> assign
%type <int> expr
%left PLUS MINUS            /* lowest precedence */
%left TIMES DIV             /* medium precedence */
%nonassoc UMINUS           /* highest precedence */

%% /* rules */

(* abstract syntax *)
type identifier = string

type cmd = 
  | Assignment of identifier * expression (*I am assigning an expression to an identifier *)
  | Var of string
  | Cmdlst of cmd * cmdlst
  | If of bexpr * cmd * cmd
  | While of bexpr * cmd
  | Malloc of identifier
  | EndofCmd of 
  | FieldAssignment of expression * expression
  | Apply of expression * expression
  | Atomic of command
  | Parallel of command * command
  | Skip

and expr =
  | Num of (int)
  | Minus of (expr * expr)
  | Identifier of identifier
  | Null
  | Proc of var * stmtlist

and boolexpr = 
  | Bool of bool
  | Expression of expr * boolOperator * expr

type ast = cmd

ast : 
    l = cmd EOF {cmd l}

cmds :
    c1 = cmd SEMICOLON c2 = cmds {Stmt (c1, c2)}
  | LBRACE c2 = cmds RBRACE {c}
  | {Empty}

cmd : 
    VAR_DECL v=VAR {Declare v} 
  | i = iden LPAREN e=expr RPAREN {}
