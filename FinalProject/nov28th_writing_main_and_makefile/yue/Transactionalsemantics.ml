open Abstractsyntax;;
open Str;;
(*open Stack;;*)
open Prettyprint;;
open List;;
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
(* environment is partial functions mapping the variables of a block that are visible according to the static scoping rules to the location of their value on the heap. *)
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
exception Invalid_input;;
(*defining print function *)
(*the print function is to make the parsed stream into a printable version *)
(*https://stackoverflow.com/questions/10406493/ocaml-printf-sprintf *)

(*Operations on Semantic Domains *)
(*in order to simulate the stack, I can either use Module stack or just use a list *)

(*defining auxiliary functions *)
(*----------------------------------------------Stack Functions--------------------------------------- *)
(*the function push and pop is for stacks management *)
(*push the single_frame onto a stack *)
let push (single_frame:frame) (stack_lst:stack) = match stack_lst with
    | [] -> single_frame :: []
    | _ -> single_frame :: stack_lst

(*pop the top frame out from the stack, and return this frame *)
(** 
let pop (stack_lst:stack) = match stack_lst with
    | [] -> (None, [])
    | [x] -> (Some x, [])
    | hd::tl -> (Some hd, tl)
**)
let pop2 (stack_lst:stack) = match stack_lst with 
    | [] -> None
    | [x] -> Some (x, [])
    | hd::tl -> Some (hd,tl) 

let pop (stack_lst:stack) = match stack_lst with 
    | [] -> (None, [])
    | [x] -> (Some x, [])
    | hd::tl -> (Some hd, tl)

let top (stack_lst:stack) = match stack_lst with 
    | [] -> raise (Failure("Empty Stack when top function is applied"))
    | [x] -> x
    | hd::tl -> hd

let get_frame (frame_option: frame option * frame list) = match frame_option with (*auxiliary function for pop function, after I pop a frame, I analyze the frame by this function *)
    | (Some v, lst) -> v
    | (None, empty_lst) -> raise(Failure("stack is empty, case: in get_frame function"))

let rec lookup element lst = match lst with (*environment has type (var*location) list, if it is var, then return its location *)
    | [] -> raise Not_found
    | (key,value):: tl -> if key = element then value else lookup element tl

let is_empty (stck:stack) = match stck with 
    | [] -> true
    | _ -> false

(*input variable and stack, output, the variable location on the heap, as obj type *)
let rec stack_lookup (element:var) (stack_lst:stack) = let stck_new = stack_lst in stack_lookup_2 element stck_new 
and 
stack_lookup_2 (element:var) (stack_lst:stack) = if is_empty stack_lst then raise(Failure("stack is empty, cannot lookup for" ^ element )) else 
    let frame_1 = pop stack_lst in 
    let frame_11 = get_frame frame_1 in 
    let search_current_frame = match frame_11 with 
        | Decl env -> (try lookup element env with Not_found -> Null)
        | Call (env, _) -> (try lookup element env with Not_found -> Null) (* Treating Null and Not_found as same. Might want to revisit this.*)
    in match search_current_frame with 
        | Null -> stack_lookup_2 element stack_lst
        | Obj oo -> oo

(**    let search_current_frame = match frame_ with 
        | (key,value) -> value
        | _ -> Not_found
        | hd::tl -> hd
    in match search_current_frame with 
        | Null -> stack_lookup_2 element stack_lst
        | Obj oo -> oo
**)
(*----------------------------------------------Heap Functions--------------------------------------- *)
(*check_if and add is for heap management *)
(*check if an element is inside of this list, if it is inside, return the position int of it *)
let rec check_if x heap_lst = match heap_lst with
    | [] -> raise Not_found 
    | [(key,value)] -> if key = x then value else raise Not_found
    | (key, value)::tl -> if key = x then value else check_if x tl

(*add a tuple as an element into a heap *)
(* since the most recent added element is in the most bottom level of the heap, hence*)
let rec add (k_new, v_new) (heap_lst:heap) = match heap_lst with 
    | [] -> [(k_new, v_new)]
    | (key,value)::tl -> (if key = k_new then 
        (k_new,v_new) :: tl else
        (key,value):: (add (k_new,v_new) tl))

(*--------------------------------------Auxiliary Functions----------------------------------------- *)
let int_to_obj (pos:int) = match pos with
    | n -> Obj n
let var_position_to_frame_decl (v1:var) (pos: int) = Decl ([v1, int_to_obj pos]) (*input: variable and position int, output: a frame with decl type for declaration *)

let var_position_to_frame_call (v1:var) (pos: int) (stck:stack) = Call ([v1, int_to_obj pos],stck) (*input: variable and position int, output: a frame with decl type for call *)


let tva_to_loc (tva1:tainted_value) = match tva1 with
    | Val (Int n) -> Obj n
    | _ -> Null
let loc_to_object_ (l1: location ) = match l1 with
    | Obj n -> n
    | Null -> failwith "Empty"

let tva_to_field_string (tva1:tainted_value) = match tva1 with 
    | Val (Fld e) -> e
    | _ -> "Error"
(*eval_loc returns a bool type, either true or false to measure if l belongs to loc(h) or not *)
let rec eval_loc (tainted_value:tainted_value) (hp_lst:heap) = match hp_lst with (*to check if it is a location on heap *) (*((object_ * string) * tainted_value) *)
    | [] -> false
    | hd::tl -> match hd with 
        | (obj1, string1), tva1 -> if obj1 = loc_to_object_(tva_to_loc tainted_value) then true else eval_loc (tainted_value:tainted_value) tl

let eval_field_bool (tainted_value:tainted_value) = match tainted_value with
    | Val (Fld n) -> true (*only true when the tainted value has field type *)
    | _-> false

let rec eval_dom (tainted_loc:tainted_value) (tainted_field: tainted_value) (hp_lst:heap) = match hp_lst with (*tainted_loc is l, tainted_field is f, hp_lst is h *)
    | [] -> false 
    | hd::tl -> match hd with
        |(objhd, stringhd),tvahd -> if objhd = (loc_to_object_ (tva_to_loc tainted_loc)) && stringhd = tva_to_field_string tainted_field then true else eval_dom (tainted_loc:tainted_value) (tainted_field: tainted_value) tl

(*-----------------------------------------Main Function-------------------------------------------------------- *)
(*so far, all the auxiliary functions have been completed, lets work on the main body of Transactional Semantics *)
(*cd has type cmds *)
let rec transactional_semantics cd = start_operation cd ([], [], 0) (*the first [] is stack, second [] is heap, 0 represents the location *) (*([], [], 0) is the initialization for a configuration of a command *)

and start_operation (cd: cmd) ((stck, hp, position): state) = match cd with 
    | VarDecl (v, c2) -> if v = (String.capitalize_ascii v) then (*4.3.2 *) (*this v corresponds to the variable x in the note *)
                            raise (Failure (v ^ " not a valid variable name, variables should start with small letters."))(*Printf.sprintf("lower case expected for var, upper case is for field") *)(*4.3.2 now you do the operation for new stack and new heap *)
                            else 
                            let stck2 = stck in push (var_position_to_frame_decl v position) stck2; let hp_new = add ((position, "val"), Val (Loc Null)) hp in
                        exec_block c2 (stck2, hp_new, position+1) (*Declare is dfined as var*cmd, and in MiniOOSOS, the C in clo<x,C,e> is indeed the c2 here *)
    
    | Call(e1, e2) -> (let temp_expr = eval_expr e1 (stck, hp, position) in (
                        match temp_expr with (*4.3.6 Recursive procedure call *)
                        | Val(Clo(v,cl,stck1)) -> let stck2 = stck1 in push (Call([(v, Obj position)], stck)) stck1; (*push (Call([(v, Obj position)], stck)) stck1; *)(*because push returns a unit type, hence use stck in *)
                                            let hp_new = add ((position,"val"), (eval_expr e2 (stck, hp, position))) hp in
                                            exec_block cl (stck2, hp_new, position+1)
                        | _ -> raise (Failure("Unable to call function:" ^ string_of_expression e1)) )
    )

    | Assign(var1, expr1) ->  (
                            match (eval_expr expr1 (stck,hp,position)) with (*4.3.7 *)
                            | Error -> raise(Failure("this is not an expected input expression" ^ string_of_expression expr1))
                            | var_new -> let hp_new = add ((stack_lookup var1 stck,"val"), var_new) hp in (stck, hp_new, position) (*double check line 59 *)
    )

    | FieldAssign(expr0,expr1,expr2) -> let temp_loc = eval_expr expr0 (stck,hp,position) and temp_field = eval_expr expr1 (stck,hp,position) in (
                                        if (eval_loc temp_loc hp = false) || (eval_field_bool temp_field = false) || ((eval_dom temp_loc temp_field) hp = false) then raise(Failure("Field_Assign Error"))
                                        else let v2 = eval_expr expr2 (stck, hp, position) in 
                                        (stck, add((tva_to_int temp_loc, tva_to_string temp_field),v2) hp, position+1) (*we need tva_to_int to transform temp_loc from tainted_value type to int type *)
                                        (**let hp_new = add (position, v2) hp in 
                                        (temp_loc, temp_field, position) **)(*professor's help *)
    )

    | Malloc v -> let hp1 = add (((stack_lookup v stck), "val"), int_to_tva position) hp in (stck, hp1, position)  (*was Val(Loc (position)) *)

    | Skip -> (stck, hp, position) (*Then I just return the original state, let the state be the start for the interpretation of next command line *)

    | Parallel (c1, c2) -> start_operation c1 (start_operation c2 (start_operation c1 (stck, hp, position)))
    | Atom c1 -> start_operation cd (start_operation c1 (stck, hp ,position))

    | If (bexpr, c1, c2) -> (
        if eval_bool bexpr (stck, hp, position) then 
            let state_new = start_operation c1 (stck, hp, position) in start_operation cd state_new
        else
            let state_new = start_operation c2 (stck, hp, position) in start_operation cd state_new
    )

    | While (bexpr, c1) -> (if eval_bool bexpr (stck, hp, position) then (*in this case matching, while has to come before Sequence *)
        let next_state = start_operation c1 (stck, hp, position) in start_operation cd next_state
        else 
        start_operation cd (stck, hp, position)
    )
    | Sequence (c1,c2) -> try start_operation c1 (stck, hp, position) with
        | Not_found -> start_operation c2 (stck, hp, position)

and 
(*(stck,hp, position) has state type *)
(** 
exec_block (cd:cmd) (stck, hp, position) = 
    let (stck_new, hp_new, position_new) = start_operation cd (stck, hp, position) in (
        match stck_new with
        | [] -> (stck_new, hp_new, position_new)
        | hd::tl -> match hd with 
            | Call e1,e2 -> eval_expr e2 (stck, hp, position)
            | Decl v -> pop stck_new; (stck_new, hp_new, position_new)
    )
**)
exec_block (cd:cmd) (stck, hp, position) = 
    let (stck_new, hp_new, position_new) = start_operation cd (stck, hp, position) in (
        if is_empty stck_new then (stck_new, hp_new, position_new)
        else
        let top_frame = top stck_new in match top_frame with
            | Call (e1,e2) -> (e2, hp_new, position_new)
            | Decl v -> pop stck_new; (stck_new, hp_new, position_new)
    )

and
eval_expr e (stck, hp, position) = match e with (*4.3.4 *) (*input expression, state; return tainted value *) (*the returned type is tained value, tained value has datatype Val(...) *)
    | Field e -> Val (Fld e) (*for the field, the runtime check is necessary hence soley Val(Fld e) is not correct *)
    | One n -> Val (Int n)
    | Minus (e1, e2) -> let ee1 = eval_expr e1 (stck, hp, position) and ee2 = eval_expr e2 (stck, hp, position) in (
        match (ee1,ee2) with
        | (Val (Int n1), Val (Int n2)) -> Val(Int (n1 - n2))
        | _ -> raise(Failure ("The parsed operation is not allowed, since either"^ string_of_expression e1 ^ "or" ^ string_of_expression e2 ^ "is not Int type"))
    )
    | Null -> Val (Loc Null) 
    | Var v -> (
        try lookup (stack_lookup v stck, "val") hp with 
        | Not_found -> raise (Failure ("Location" ^ ( string_of_hp_location (stack_lookup v stck, "val") ^ "not found")))
    )
    (**
    | Dot (v, e2) -> (* let l1 = eval_expr e1 (stck, hp, position) in let f1 = eval_expr e2 (stck, hp, position) in *) (
        try Val(lookup (eval_expr v e2 (stck, hp, position)) hp) with (*because the returned type should always be tainted value *)
        | Not_found -> raise (Failure ("Not_found in eval_expr"))
    **)
    | Dot (e1, e2) -> let temp_loc = eval_expr e1 (stck,hp,position) and temp_field = eval_expr e2 (stck,hp,position) in (
                                        if (eval_loc temp_loc hp = true) && (eval_field_bool temp_field = true) && ((eval_dom temp_loc temp_field) hp = true) 
                                        then try lookup (tva_to_int temp_loc, tva_to_string temp_field) hp with  (*add ((tva_to_int temp_loc, tva_to_string temp_field),Null) hp *)
                                            | Not_found -> raise(Failure("There is no location on the heap matched with:" ^ string_of_hp_location (tva_to_int temp_loc, tva_to_string temp_field) ))
                                        else raise(Failure("Error in eval_expr, case Dot: There is the ELSE case"))
    )
    | Procedure (v, c2) -> Val (Clo (v, c2, stck))

and
eval_bool bexpr (stck, hp, position) = match bexpr with (* input bexpr, state; return bool *)
    | Bool true_or_false -> true_or_false
    | Expression (expr1, bop, expr2) -> let bb1 = eval_expr expr1 (stck, hp, position) and bb2= eval_expr expr2 (stck, hp, position) in match (bb1, bop, bb2) with
        | (Val(Int n1), EQ, Val(Int n2)) -> (n1 = n2)
        | (Val (Loc l1),EQ, Val (Loc l2)) -> (l1 = l2)
        | (Val (Clo c1),EQ, Val (Clo c2)) -> (c1 = c2)
        | (Val(Int n1), LT, Val(Int n2)) -> (n1 < n2)
        | _-> raise(Failure("Error in eval_bool,case1_Int" ^ string_of_expression expr1 ^ "is not comparable to" ^ string_of_expression expr2))
(**
and
string_of_tainted_value tainted_v = match tainted_v with (*print out a single tainted value *)
    | Val va -> (match va with
        |Fld f -> "Field" ^ f 
        | Int n -> "Int" ^ string_of_int n  
        | Loc l -> "Location" ^ string_of_loc l 
        | Clo (v, c, stck) -> "Closure:(" ^ v ^ "," ^string_of_command c ^"," ^string_of_stack stck ^ ")" (*the most challenging part in tainted value *)
    )
    | Error -> "Error"
and
string_of_stack stck = match stck with (*print each frame of the entire stack *)
    | [] -> "[]"
    | hd::tl -> (string_of_frame hd) ^ string_of_stack stck  (*recursively print out each frame from the stack *)

and string_of_frame (frame:frame) = match frame with (*print out a single frame *)
    | (key, value) -> Printf.sprintf("Frame: the key and value are(") ^ string_of_expression key ^ "," ^ value ^ ")"
    | _ -> "Error: string_of_frame, Not expected input type"
**)
and string_of_seman_expr expr1 = match expr1 with 
    | Field st -> Printf.sprintf("Field:%s") st 
    | One n -> Printf.sprintf("One:%d") n
    | Minus (e1, e2) -> Printf.sprintf("Minus:(") ^ string_of_seman_expr e1 ^ "," ^ string_of_seman_expr e2 ^ ")"
    | Null -> Printf.sprintf("Null")
    | Procedure (v, c) -> Printf.sprintf("Proc:(") ^ v ^ "," ^ string_of_command c ^ ")" (* | Location (e1, e2) -> Printf.sprintf("Location:(") ^ string_of_seman_expr e1 ^ "," ^ string_of_seman_expr e2 ^ ")" *)
    | Var v1 -> Printf.sprintf("Variable:%s") v1
    | Dot (e1,e2) -> Printf.sprintf("Location:(") ^ string_of_seman_expr e1 ^ "," ^ string_of_seman_expr e2 ^ ")"
and 
string_of_hp_location (objecttt, stringgg) = Printf.sprintf("%s,%s") (string_of_int objecttt) stringgg

and 
string_of_loc loc = match loc with 
    | Obj n -> Printf.sprintf("Location is: %d") n
    | Null -> "Null"
(**     
and
string_of_command_abst (c1:cmd) = match c1 with 
**)
and
tva_to_int (tva1:tainted_value) = match tva1 with (*tainted value to int *)
    | Val (Int n) -> n
    | _ -> failwith "Empty" (*    | Val (Obj m) -> tva_to_int(Val m) *)
and
tva_to_string tva1 = match tva1 with (*tainted value to string *) (*this function is used for e1 in Field assign, hence only need to interpret field type  *)
    | Val (Fld e) -> e 
    | _ -> failwith "Empty"
and int_to_tva int1 = match int1 with (*this function is used for transforming the position with int type into a tainted value type *)
    | n -> Val (Int n) 
and any_to_tva any1 = match any1 with
    | Fld fl -> Val(Fld fl)
    | Int n -> Val(Int n)
    | Loc lc -> Val (Loc lc)
    | Clo cl -> Val (Clo cl)

(* and to_frame (v:Abstractsyntax.var) (po:Int) = *)