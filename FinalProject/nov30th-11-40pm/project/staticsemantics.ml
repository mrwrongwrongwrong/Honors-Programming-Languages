open Abstractsyntax;;
open Prettyprint;;
(*https://ocaml.org/learn/tutorials/set.html *)

module SS = Set.Make(String);;

let empty_lst = SS.empty;;

(*add the element s to the tail of the list lst *)
let append_element lst s = List.fold_right SS.add lst s;;

(*the argument input is what we want to match with, the var_lst is an empty list to store all variables *)
let rec main_function input = scoping_command input SS.empty

and
scoping_command input2 var_lst = match input2 with (*the entry point is always a command, which contains expressions *)
            | VarDecl (v,c) -> (scoping_command c (SS.add v var_lst)) || (scoping_command c var_lst) (*var x; C1 *)(*since from the pdf, var x;C1 is equavilent to Declaration *)
            | Call (e1, e2) -> (scoping_expression e1 var_lst) || (scoping_expression e2 var_lst) (*|| (scoping_command e2 var_lst) *) (*e1(e2) *)(*because it is a tree structure, we still need to go for its sub-tree, which is c2. Inside of c2, which is cmds, there might be multiple command again *)
            | Malloc v -> (not (SS.mem v var_lst)) (*|| (scoping_command v var_lst)*) (*malloc(x) *)(* if v is not in var_list, return true. Continuing, check cmds c2 *)
            | Assign (v, e2) -> (not (SS.mem v var_lst)) || (scoping_expression e2 var_lst) (*|| (scoping_command e2 var_lst)*) (*x=e *)
            | FieldAssign (e1, e2, e3) -> (scoping_expression e1 var_lst) || (scoping_expression e2 var_lst) || (scoping_expression e3 var_lst) (*|| (scoping_command c2 var_lst)*) (*e1.e2=e3 *)
            | Skip -> false (*skip *) (*{C1;C2} is just Cmd (c1, c2) itself, the function itself *)
            | While (b, c) -> (scoping_bool_expression b var_lst) || (scoping_command c var_lst) (*|| (scoping_command c2 var_lst)*) (*while b C1 *)
            | If (b, cc1, cc2) -> (scoping_bool_expression b var_lst)|| (scoping_command cc1 var_lst)|| (scoping_command cc2 var_lst) (*|| (scoping_command c2 var_lst)*) (*if b C1 else C2 *)
            | Parallel (cc1, cc2) -> (scoping_command cc1 var_lst) || (scoping_command cc2 var_lst) (*|| (scoping_command c2 var_lst)*) (*{C1 ||| C2} *)
            | Atom c -> (scoping_command c var_lst) (*atom(C1) *) (*not sure about this implementation, should double check *)
            | Sequence (cc1, cc2) -> (scoping_command cc1 var_lst) || (scoping_command cc2 var_lst)
            | Print e -> scoping_expression e var_lst

(**
and
scoping_command input var_lst = match input with (*the entry point is always a command, which contains expressions *)
    | Empty -> false
    | Cmd (c1, c2) -> match c1 with (*where c2 represents cmds, in AbstractSyntax *) (*we are currently checking c1, still need to check c2 after c1,where c2 is cmds, not a single cmd *)
                    | VarDecl (v,c) -> (scoping_command c (SS.add v var_lst)) || (scoping_command c2 var_lst) (*var x; C1 *)(*since from the pdf, var x;C1 is equavilent to Declaration *)
                    | Call (e1, e2) -> (scoping_expression e1 var_lst) || (scoping_expression e2 var_lst) || (scoping_command c2 var_lst) (*e1(e2) *)(*because it is a tree structure, we still need to go for its sub-tree, which is c2. Inside of c2, which is cmds, there might be multiple command again *)
                    | Malloc v -> (not (SS.mem v var_lst)) || (scoping_command c2 var_lst) (*malloc(x) *)(* if v is not in var_list, return true. Continuing, check cmds c2 *)
                    | Assign (v, e2) -> (not (SS.mem v var_lst)) || (scoping_expression e2 var_lst) || (scoping_command c2 var_lst) (*x=e *)
                    | FieldAssign (e1, e2, e3) -> (scoping_expression e1 var_lst) || (scoping_expression e2 var_lst) || (scoping_expression e3 var_lst) || (scoping_command c2 var_lst) (*e1.e2=e3 *)
                    | Skip -> (scoping_command c2 var_lst) (*skip *) (*{C1;C2} is just Cmd (c1, c2) itself, the function itself *)
                    | While (b, c) -> (scoping_bool_expression b var_lst) || (scoping_command c var_lst) || (scoping_command c2 var_lst) (*while b C1 *)
                    | If (b, cc1, cc2) -> (scoping_bool_expression b var_lst)|| (scoping_command cc1 var_lst)|| (scoping_command cc2 var_lst) || (scoping_command c2 var_lst) (*if b C1 else C2 *)
                    | Parallel (cc1, cc2) -> (scoping_command cc1 var_lst) || (scoping_command cc2 var_lst) || (scoping_command c2 var_lst) (*{C1 ||| C2} *)
                    | Atom c -> (scoping_command c2 var_lst) (*atom(C1) *) (*not sure about this implementation, should double check *)
                    | Sequence (cc1, cc2) -> (scoping_command cc1 var_lst) || (scoping_command cc2 var_lst)
**)
and
scoping_expression e var_lst = match e with 
    | Field f -> false (*f *)
    | One n -> false (*1 *)
    | Minus (e1, e2) -> (scoping_expression e1 var_lst) || (scoping_expression e2 var_lst) (*Minus e1-e2 *)
    | Var v -> (not (SS.mem v var_lst)) (*x *)
    | Dot (e1, e2) -> (scoping_expression e1 var_lst) || (scoping_expression e2 var_lst) (*e.e *) (*or you can call it dot *)
    | Procedure (v, c) -> (scoping_command c (SS.add v var_lst)) (*proc y:C *)
    | Null -> false (*| Null -> false (*Null *)) *)
and
scoping_bool_expression bo var_lst = match bo with
    | Bool bo -> false (*true and false as b.E = false *)
    | Expression (e1, bop, e2) -> match bop with
        | EQ -> (scoping_expression e1 var_lst) || (scoping_expression e2 var_lst) (*b.E=e1.E∨e2.E *)
        | LT -> (scoping_expression e1 var_lst) || (scoping_expression e2 var_lst)
(*change the field_assign into expression * expression * expression in abstractsyntax, then reimplement the field assign after assign *)

let static_scoping = main_function