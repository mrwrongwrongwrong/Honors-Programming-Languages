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

type identifier = string



type cmd = 
  | Assignment of (identifier * expression) (*I am assigning an expression to an identifier *)
  | Var of string
  | Cmdlst of (cmd * cmdlst)
  | If of (bexpr * cmd * cmd)
  | While of (bexpr * cmd)
  | Malloc of (identifier)
  | EndofCmd of 
  | FieldAssignment of (expression * expression)
  | Apply of (expression * expression)
  | Atomic of (command)
  | Parallel of (command * command)

and expr =
  | Num of (int)
  | Minus of (expr * expr)
  | Identifier of identifier
  | Null
  | Proc of var * stmtlist

and boolexpr = 
  | Bool of bool
  | expression of expr * boolOperator * expr



