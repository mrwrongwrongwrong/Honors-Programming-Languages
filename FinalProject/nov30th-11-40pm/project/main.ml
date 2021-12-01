
open Abstractsyntax;;
open Prettyprint;;
open Staticsemantics;;
open Transitionalsemantics;;

    let lexbuffer = (Lexing.from_channel stdin) in
        let my_abstract_syntax_tree = Parser.prog Lexer.token lexbuffer in (
            print_string "Abstract Syntax tree:\n";
            let my_print_tree = string_of_command my_abstract_syntax_tree in
            print_string (my_print_tree);
            print_string "\n\n";
            print_string "The Output of My Program: \n";
            Printexc.print_backtrace (stdout);
            let final_state = transitional_semantics my_abstract_syntax_tree in
            print_string ("\n Final State: \n" ^ (string_of_state (final_state)));
            print_newline()
        )

(* let ic = if Sys.argv.(1) = "-input" then stdin else open_in Sys.argv.(1) in *)

(** 
open Parsing;;
try
  let lexbuf = Lexing.from_channel stdin in
  while true do
    try
      Parser.prog Lexer.token lexbuf
    with Parse_error ->
      (print_string "Syntax error ..." ; print_newline ()) ;
    clear_parser ()
  done
with Parser.EOF ->
  ()
;;
**)

