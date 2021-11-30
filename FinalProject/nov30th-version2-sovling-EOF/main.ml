open Abstractsyntax;;
open Staticsemantics;;
open Transitionalsemantics;;
open Prettyprint;;
(**open Parser;;
open Lexer;;
**)

let ic = if Sys.argv.(1) = "-input" then stdin else open_in Sys.argv.(1) in 
    let lexbuffer = (Lexing.from_channel ic) in
        let my_abstract_syntax_tree = Parser.prog Lexer.token lexbuffer in (
            print_string "Abstract Syntax tree:\n";
            let my_print_tree = string_of_command my_abstract_syntax_tree in
            print_string (my_print_tree);
            print_string "\n\n";
            print_string "The Output of My Program: \n";
            (* let final_state = transitional_semantics my_abstract_syntax_tree in *)
            print_string ("\n Final State: \n" ^ (string_of_state (transitional_semantics my_abstract_syntax_tree)));
            print_newline()
        )


