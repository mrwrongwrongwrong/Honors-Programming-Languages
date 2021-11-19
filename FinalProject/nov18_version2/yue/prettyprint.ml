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
  | FieldAssign of (expression * expression * expression)
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

let rec string_list string_function lst = 
  "{" ^ (string_list2 string_function lst)

and 
string_list2 string_function lst = match lst with
  | hd::tl -> (string_function hd) ^ (",\n") ^ (string_list2 string_function tl)
  | [] -> "}"
  
let string_print_expr ex = match ex with
    | Field f -> Printf.sprintf("Field: %s") f
    | Num n -> "Num" ^ (Printf.sprintf"%d" n)
    | ArithmOp (e1, o, e2) -> "ArithmOp:(" ^ string_print_expr e1 ^ "," ^ string_print_int_op o ^ "," ^ string_print_expr e2 ")"
    | Null -> "Null"
    | Location (e1, e2) -> "Location:(" ^ string_print_expr e1 ^ "," ^ string_print_expr e2 ^ ")"
    | Proc (v, c) -> match c with 
                    | Empty -> Printf.sprintf("Proc: (%s)") v
                    | _ -> "Proc:(" ^ string_print_cmd c ^ ")"

let string_print_cmd = function 
    | Declaration (v, c) -> Printf.sprintf("Declaration of (%s,%s)") v c
    | Call (e1, e2) -> Printf.sprintf("Call:(( %s ), Argument: %s)") e1 e2 
    | Malloc v -> Printf.sprintf("Malloc of %s") v
    | Assign (v, e) -> Printf.sprintf("Assign:(%s := %s)") v e 
    | FieldAssign (e1, e2, e3) -> 
    | While (boolean, cmd)
    | If (boolean, s1, s2)
    | Atom l -> Printf.sprintf("Atom:(") ^ string_print_cmd ^ ")"
    | Parallel (l1, l2)
    | Sequence (l1, l2)
    | Skip -> Printf.sprintf("(This is SKIP)")
    | Print e -> Printf.sprintf("Printing:( %s") e ^ ")"