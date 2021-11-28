(* File abstractsyntax.ml *)
(*type operator_arithmetic_type = PLUS | MINUS | TIMES | DIV *)
(*type operator_bool_type = EQ | LEQ | GEQ | LT | GT *)
type operator_bool_type = EQ | LT

type var = string 

type field = string 

type cmd =
  | VarDecl of var * cmd (*varaible declaration *)
  | Malloc of var 
  | Call of expression * expression
  | Assign of var * expression
  | FieldAssign of expression * expression * expression
  | Skip
  | While of bool_expression * cmd
  | If of bool_expression * cmd * cmd
  | Parallel of cmd * cmd
  | Sequence of cmd * cmd
  | Atom of cmd 
and 
expression = 
  | Field of field 
  | One of int 
  | Minus of expression * expression 
  | Dot of expression * expression 
  | Procedure of var * cmd
  | Var of var 
  | Null (*of unit *)
(* type expression = Field of field | Number of int | Arithmetic of expression * operator_arithmetic_type * expression | Null | Var of var | Deference of expression * expression | Procedure of var * cmds *)
and
bool_expression = 
  | Bool of bool 
  | Expression of expression * operator_bool_type * expression
(** 
and 
cmd = If of bool_expression * expression * expression
  | While of bool_expression * expression
  | Var of var
**)
(* cmd is the same as stmt, cmds is the same as stmtlist *)



(*type identifier = Var of var | Deference of var * identifier is a more generalized form, since it can have e.e.e.e which is more than e.e *)
(*type expression = Identifier of identifier | Arithmetic of expression * operator_arithmetic_type * expression | Number of int | Procedure of var * cmds | Null *)
(* in cmd  | Sequence of cmds * cmds *)