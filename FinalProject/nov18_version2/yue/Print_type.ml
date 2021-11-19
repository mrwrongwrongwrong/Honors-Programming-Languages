open Abstractsyntax;;
open Str;;
open Stack;;
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

