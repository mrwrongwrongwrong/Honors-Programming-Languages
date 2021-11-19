open Abstractsyntax;;
open Str;;
open Stack;;
open Printf;;

(** 
open Parser.mly;;
**)

type object_ = int 

and
boolean = Bool of bool

and 
location = Obj of object_ | Null

and
closure = var * cmd * stack
(* closure = Int of int | Abstractsyntax.cmds | Stack *)

and 
value = Fld of string | Int of int | Loc of location | Clo of closure
(* value is one of: field, integer, location, procedure closure *)

and 
tainted_value = Val of value | Error

and 
environment = (var * location) list 
(* environment maps a variable on the block to its location on the heap *)

and 
frame = Decl of environment | Call of environment * stack 
(*frame can be one of: declaration or call *)
(*when frame is declaration, it records a variable location in the environment p *)
(*when frame is call, it records a parameter location in environment p and records the calling stack *)

and 
stack = frame list
(* stack records the location of all visible variables *)
(*stack as a sequence of 0 or more Frames *)

and 
heap = object_ * string * tainted_value

and
state = (stack * heap) * int
(*state is made up pf a stack and a heap *)

and 
ctrl = Var of var 
(*defining print function *)
(*the print function is to make the parsed stream into a printable version *)
(*https://stackoverflow.com/questions/10406493/ocaml-printf-sprintf *)

let rec string_list string_function lst = 
  "{" ^ (string_list2 string_function lst)

and 
string_list2 string_function lst = match lst with
  | hd::tl -> (string_function hd) ^ (",\n") ^ (string_list2 string_function tl)
  | [] -> "}"
  

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

let string_print_expression ex = match ex with
    | Num n -> "Num" ^ (Printf.sprintf"%d" n)
    | Null -> "Null"
    | Proc (v, c) -> match c with 
                    | Empty -> Printf.sprintf("Proc: (%s)") v
                    | _ -> "Proc:(" ^ string_print_cmd c ^ ")"

let string_print_cmd = function 
    | Declaration (v, c) -> Printf.sprintf("Declaration of (%s,%s)") v c
    | Call (e1, e2) -> Printf.sprintf("Call:(( %s ), Argument: %s)") e1 e2 
    | Malloc v -> Printf.sprintf("Malloc of %s") v
    | Assign (v, e) -> Printf.sprintf("Assign:(%s := %s)") v e 

(**     
let string_print_cmd = function 
    | Declaration (v, c) -> Printf.sprintf("Declaration of (%s,%s)") v c
    | Call (e1, e2) -> Printf.sprintf("Call:(( %s ), Argument: %s)") e1 e2 
    | Malloc v -> Printf.sprintf("Malloc of %s") v
    | Assign (v, e) -> Printf.sprintf("Assign:(%s := %s)") v e 
**)

(** 
let string_of_val (e : expr) : string = 
  match e with 
  | Int i -> string_of_int i
  | _ -> None

**)