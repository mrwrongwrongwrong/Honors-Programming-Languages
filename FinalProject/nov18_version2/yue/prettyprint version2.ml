open Abstractsyntax;;
open Str;;
open Stack;;
open Printf;;

(** 
open Parser.mly;;
**)

type var = int 

(*how to implement skip and End of command in type command *)
type command = 
  | Var of (var * command)
  | Call of (expression * expression)
  | Malloc of (var)
  | Assign of (var * expression)
  | FieldAssignment of (expression * expression * expression)
  | While of (bool_expression * command)
  | If of (bool_expression * command * command)
  | Atom of (command)
  | Parallel of (command * command)
  | Sequence of (command * command) 
and bool_expression = 
  | Equal of (expression * expression)
  | Gt of (expression * expression)
  | Lt of (expression * expression)
  | Geq of (expression * expression)
  | Leq of (expression * expression)
and expression =
  | Num of (int)
  | Minus of (expression * expression)
  | Location of (expression * expression)

let string_print_int_op intop = match intop with
    | Minus -> Printf.sprintf("-")
    | Plus -> Printf.sprintf("+")
    | Times -> Printf.sprintf("*")
    | Div -> Printf.sprintf("/")

let string_print_bool_op boop = match boop with 
    | Eq -> Printf.sprintf("=")
    | Lt -> Printf.sprintf("<")
    | Gt -> Printf.sprintf(">")
    | Geq -> Printf.sprintf(">=")
    | Leq -> Printf.sprintf("<=")