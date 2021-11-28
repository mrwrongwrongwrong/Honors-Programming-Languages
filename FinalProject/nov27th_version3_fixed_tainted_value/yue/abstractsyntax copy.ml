(* File abstractsyntax.ml *)
type operator_arithmetic_type = PLUS | MINUS | TIMES | DIV
type operator_bool_type = EQ | LEQ | GEQ | LT | GT

type var = string 

type identifier = Var of var | Deference of var * identifier

type expression = Identifier of identifier | Arithmetic of expression * operator_arithmetic_type * expression | Number of int | Procedure of var * statementlist | Null

and
bool_expression = Bool of bool | Expression of expression * operator_bool_type * expression

and 
cmd = If of bool_expression * expression * expression
  | While of bool_expression * expression
  | Var of var

type cmd = Assign of identifier 
  | If of bool_expression * expression * expression
  | While of bool * cmd
  | Skip
  | Var of string

type statementlist 
  | 