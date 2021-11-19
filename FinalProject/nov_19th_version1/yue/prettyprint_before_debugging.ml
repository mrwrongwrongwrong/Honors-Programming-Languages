open Abstractsyntax;;
open Str;;
open Stack;;
open Printf;;

(** 
open Parser.mly;;
**)

type var = string 
(*how to implement skip and End of command in type command *)
(*type is to define what argument type each operation takes *)
type command = 
  | Var of (var * command)
  | Call of (expression * expression)
  | Malloc of (var)
  | Assign of (var * expression)
  | FieldAssign of (expression * expression * expression)
  | Sequence of (command * command) 
  | While of (bool_expression * command)
  | If of (bool_expression * command * command)
  | Parallel of (command * command)
  | Atom of (command)
and bool_expression = 
  | Equal of (expression * expression)
  | Lt of (expression * expression)
and expression =
  | Field of string
  | Num of int
  | Minus of (expression * expression)
  | Location of (expression * expression)
  | Proc of (var * command)
  | Null of unit

(*Location is e.e *)
(*In expression, there are different types of expression: 1.field expression 2.Arithm expression 3. location expr 4. recursive procedure expr 5.Boolean expr *)

(*prog is the tree structure here *)
let ( string_of_command, string_of_bool_expression, string_of_expression)= 
  let rec string_of_command = function
    | Var (v, c) -> Printf.sprintf("Var(%s") v ^ "," ^ string_of_command c ^ ")"
    | Call (e1, e2) -> Printf.sprintf("Call:(") ^ string_of_expression e1 ^ "," ^ string_of_expression e2 ^ ")"
    | Malloc v -> Printf.sprintf("Malloc: (%s") v ^ ")"
    | Assign (v, e) -> Printf.sprintf("Assign:(%s") v ^ string_of_expression e ^ ")" 
    | FieldAssign (e1, e2, e3) -> Printf.sprintf("FieldAssign:(") ^ string_of_expression e1 ^ "," ^ string_of_expression e2 ^ "," ^ string_of_expression e3 ^ ")"
    | Sequence (c1, c2) -> Printf.sprintf("Sequence:(") ^ string_of_command c1 ^ "," ^ string_of_command c2 ^ ")"
    | While (b, c) -> Printf.sprintf("While:(") ^ string_of_bool_expression b ^ ", loop_body:" ^ string_of_command c ")"
    | If (b, c1, c2) -> Printf.sprintf("If:(") ^ string_of_bool_expression b ^ ", then" ^ string_of_command c1 ^ ", else" ^ string_of_command c2 ^ ")"
    | Parallel (c1, c2) -> Printf.sprintf("Parallel:(") ^ (string_of_command c1) ^ "|||" ^ (string_of_command c2) ")"
    | Atom c -> Printf.sprintf("Atom:(") ^ string_of_command c ^ ")"
    | _ -> Printf.sprintf("Unmatched Print Case in string_of_command")
  and 
  string_of_expression en = match en with
    | Field st -> Printf.sprintf("Field:%s") st 
    | Num n -> Printf.sprintf("Num:%d") n
    | Minus (e1, e2) -> Printf.sprintf("Minus:(") ^ string_of_expression e1 ^ "," ^ string_of_expression e2 ^ ")"
    | Location (e1, e2) -> Printf.sprintf("Location:(") ^ string_of_expression e1 ^ "," ^ string_of_expression e2 ^ ")"
    | Proc (e1, e2) -> Printf.sprintf("Proc:(") ^ string_of_expression e1 ^ "," ^ string_of_expression e2 ^ ")"
    | Null u -> Printf.sprintf("Null")
    | _ -> Printf.sprintf("Unmatched Print Case in string_of_expression")
  and 
  string_of_bool_expression bo = match bo with 
    | Equal (e1, e2) -> "(" ^ string_of_expression e1 ^ "==" ^ string_of_expression e2 ^ ")"
    | Lt (e1, e2) -> "(" ^ string_of_expression e1 ^ "<=" ^ string_of_expression e2 ^ ")"
    | _ -> Printf.sprintf("Unmatched Print Case in string_of_bool_expression")
  in (string_of_command, string_of_bool_expression, string_of_expression)

let string_print_int_op intop = match intop with
    | Minus (e1, e2) -> "(" ^ string_print_expr e1 ^ Printf.sprintf("-") ^ string_print_expr e2 ^ ")"
    | _ -> Printf.sprintf("__Int_Operator_Not_Expected__")

let string_print_bool_op boop = match boop with 
    | Equal (e1, e2) -> Printf.sprintf("=")
    | Lt (e1, e2)-> "(" ^ string_print_expr e1 ^ "<" ^string_print_expr e2 ^ ")"

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

(** 
let rec string_list string_function lst = 
  "{" ^ (string_list2 string_function lst)

and 
string_list2 string_function lst = match lst with
  | hd::tl -> (string_function hd) ^ (",\n") ^ (string_list2 string_function tl)
  | [] -> "}"
**)