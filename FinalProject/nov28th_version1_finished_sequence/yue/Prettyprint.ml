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
  | Var of (var * command) (*var is equal to Declaration/Varable Declaration *)
  | Call of (expression * expression)
  | Malloc of (var)
  | Assign of (var * expression)
  | FieldAssign of (expression * expression * expression)
  | Sequence of (command * command) 
  | While of (bool_expression * command)
  | If of (bool_expression * command * command)
  | Parallel of (command * command)
  | Atom of (command)
  | Skip
and bool_expression = 
  | Equal of (expression * expression)
  | Lt of (expression * expression)
and expression =
  | Field of string (*The reason why I dont add | Var_expr of string is because it will be the same as field *)
  | One of int
  | Minus of (expression * expression)
  | Location of (expression * expression) (*e.e in MiniOOSOS.pdf *)
  | Proc of (var * command)
  | Null of unit

(*Location is e.e *)
(*In expression, there are different types of expression: 1.field expression 2.Arithm expression 3. location expr 4. recursive procedure expr 5.Boolean expr *)

(*prog is the tree structure here *)
let ( string_of_command, string_of_bool_expression, string_of_expression)= 
  let rec string_of_command = function
    | Var (v, c) -> Printf.sprintf("Var_Declaration(%s") v ^ "," ^ string_of_command c ^ ")"
    | Call (e1, e2) -> Printf.sprintf("Call:(") ^ string_of_expression e1 ^ "," ^ string_of_expression e2 ^ ")"
    | Malloc v -> Printf.sprintf("Malloc: (%s") v ^ ")"
    | Assign (v, e) -> Printf.sprintf("Assign:(%s") v ^ string_of_expression e ^ ")" 
    | FieldAssign (e1, e2, e3) -> Printf.sprintf("FieldAssign:(") ^ string_of_expression e1 ^ "," ^ string_of_expression e2 ^ "," ^ string_of_expression e3 ^ ")"
    | Sequence (c1, c2) -> Printf.sprintf("Sequence:(") ^ string_of_command c1 ^ "," ^ string_of_command c2 ^ ")"
    | While (b, c) -> Printf.sprintf("While:(") ^ string_of_bool_expression b ^ ", loop_body:" ^ string_of_command c ^ ")"
    | If (b, c1, c2) -> Printf.sprintf("If:(") ^ string_of_bool_expression b ^ ", then" ^ string_of_command c1 ^ ", else" ^ string_of_command c2 ^ ")"
    | Parallel (c1, c2) -> Printf.sprintf("Parallel:(") ^ (string_of_command c1) ^ "|||" ^ string_of_command c2 ^ ")"
    | Atom c -> Printf.sprintf("Atom:(") ^ string_of_command c ^ ")"
    | Skip -> Printf.sprintf("SKIP")
  and 
  string_of_expression en = match en with
    | Field st -> Printf.sprintf("Field:%s") st 
    | One n -> Printf.sprintf("One:%d") n
    | Minus (e1, e2) -> Printf.sprintf("Minus:(") ^ string_of_expression e1 ^ "," ^ string_of_expression e2 ^ ")"
    | Null u -> Printf.sprintf("Null")
    | Location (e1, e2) -> Printf.sprintf("Location:(") ^ string_of_expression e1 ^ "," ^ string_of_expression e2 ^ ")"
    | Proc (v, c) -> Printf.sprintf("Proc:(") ^ v ^ "," ^ string_of_command c ^ ")"
  (*type expression = Field of field | One of int | Minus of expression * expression | Null | Var of var | Dot of expression * expression | Procedure of var * cmds *)
  and 
  string_of_bool_expression bo = match bo with 
    | Equal (e1, e2) -> "(" ^ string_of_expression e1 ^ "==" ^ string_of_expression e2 ^ ")"
    | Lt (e1, e2) -> "(" ^ string_of_expression e1 ^ "<=" ^ string_of_expression e2 ^ ")"
  in (string_of_command, string_of_bool_expression, string_of_expression)

(**    | _ -> Printf.sprintf("Unmatched Print Case in string_of_command")
       | _ -> Printf.sprintf("Unmatched Print Case in string_of_expression")
       | _ -> Printf.sprintf("Unmatched Print Case in string_of_bool_expression")
**)
(** 
let rec string_list string_function lst = 
  "{" ^ (string_list2 string_function lst)

and 
string_list2 string_function lst = match lst with
  | hd::tl -> (string_function hd) ^ (",\n") ^ (string_list2 string_function tl)
  | [] -> "}"
**)