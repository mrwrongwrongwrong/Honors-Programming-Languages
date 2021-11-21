open Abstractsyntax;;
open Str;;
open Stack;;
open Prettyprint;;
(** 
This is the last coding part of the project, which contains 
1. Semantic Domains
2. Operations on Semantic Domains
**)

(*Semantic Domains: *)
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
environment = (var * location) list (*location is defined as object_, which has type int *)
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
heap = ((object_ * string) * tainted_value) list
(*field has same type as string, hence use string to represent field *)
and
state = stack * heap * int
(*state = (stack * heap) * int*)
(*state is made up pf a stack and a heap *)
(*use int to record its position *)
and 
ctrl = Declaration of var * ctrl | Recur_Call of expression * expression
    | Malloc of var | Assign of var * expression | FieldAssign of expression * expression *expression (*e.e =e *)
    | Skip | Sequence of ctrl * ctrl | While of bool * ctrl | If of bool * ctrl * ctrl | Parallel of ctrl * ctrl (*{Ctrl|||Ctrl} *)
    | Atom of ctrl(* atom(Ctrl) *) | Block of ctrl (*block(Ctrl) *)
and
config = Ctrl_State of ctrl * state(*(Ctrl * State) *) | State of state
(*defining print function *)
(*the print function is to make the parsed stream into a printable version *)
(*https://stackoverflow.com/questions/10406493/ocaml-printf-sprintf *)

(*Operations on Semantic Domains *)
(*in order to simulate the stack, I can either use Module stack or just use a list *)

(*defining auxiliary functions *)

(*the function push and pop is for stacks management *)
(*push the single_frame onto a stack *)
let push single_frame stack_lst = match stack_lst with
    | [] -> single_frame :: []
    | _ -> single_frame :: stack_lst

(*pop the top frame out from the stack, and return this frame *)
let pop stack_lst = match stack_lst with
    | [] -> None
    | [x] -> x
    | hd::tl -> hd

(*check_if and add is for heap management *)
(*check if an element is inside of this list, if it is inside, return the position int of it *)
let rec check_if x heap_lst = match heap_lst with
    | [] -> raise Not_found 
    | [(key,value)] -> if key = x then value else raise Not_found
    | (key, value)::tl -> if key = x then value else check_if x tl

(*add a tuple as an element into a heap *)
(* since the most recent added element is in the most bottom level of the heap, hence*)
let rec add (k_new, v_new) heap_lst = match heap_lst with 
    | [] -> [(k_new, v_new)]
    | (key,value)::tl -> (key,value):: (add(k_new,v_new) tl)

(*so far, all the auxiliary functions have been completed, lets work on the main body of Transactional Semantics *)
(*cd has type cmds *)
let rec transactional_semantics cd = start_operation cd ([], [], 0) (*the first [] is stack, second [] is heap, 0 represents the location *)

and start_operation (cd: cmds) ((stck, hp, position): state) = match cd with 
    | Empty -> (stck, hp, position) (* I have finished operations on all cd, it is time to return *)
    | Cmd (c, cs) -> match c with (*c is a single command, cs represent multiple commands *)
        | 