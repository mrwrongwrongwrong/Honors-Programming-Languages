(* File abstractsyntax.ml *)
type operator_arithmetic_type = PLUS | MINUS | TIMES | DIV
type operator_bool_type = EQ | LEQ | GEQ | LT | GT

type var = string 

type identifier = Var of var | Deference of var * identifier

type expression = Identifier of identifier | Arithmetic of expression * operator_arithmetic_type * expression | Number of int | Procedure of var * cmds | Null

and
bool_expression = Bool of bool | Expression of expression * operator_bool_type * expression

(** 
and 
cmd = If of bool_expression * expression * expression
  | While of bool_expression * expression
  | Var of var
**)
(* cmd is the same as stmt, cmds is the same as stmtlist *)
and
cmd =
  | Var of string
  | Declare of var
  | Malloc of var 
  | Call of identifier * expression
  | Assign of identifier * expression
  | FieldAssign of identifier * expression
  | Skip
  | If of bool_expression * expression * expression
  | While of bool_expression * cmds
  | Atom of cmd 

and
cmds =
  | Empty
  | Cmd of cmd * cmds