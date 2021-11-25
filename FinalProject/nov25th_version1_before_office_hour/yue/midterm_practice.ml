(* File calculator.ml *)
open Parsing;;

let sum lst = 
  match lst with 
  | [] -> true
  | _ -> false

let rec sum lst = 
  match lst with
  | [] -> 0
  | h :: t -> h + sum t;;

print_string "hello world"