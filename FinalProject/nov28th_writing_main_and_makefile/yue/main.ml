open Abstractsyntax;;
open Staticsemantics;;
open OperationalTypes;;
open Transactionalsemantics;;
open Prettyprint;;

let ic = if Sys.argv.(1) = "-i" then stdin else open_in Sys.argv.(1) in
    let lexbuf = (Lexing.from_channel ic) in
        let abstractSyntaxTree = try
            Parser.prog Lexer.token lexbuf
            with
            | Parser.Error -> raise (Failure (Printf.sprintf "Parser failed! At offset %d: syntax error.\n%!" (Lexing.lexeme_start lexbuf)))
            | Lexer.Failure msg -> raise (Failure (Printf.sprintf "Lexer Failed! %s%!" msg))

            in (
                if (static_scoping abstractSyntaxTree) then
                    print_string "Static check failed.\n" 
                else (
                    print_string "ABSTRACT SYNTAX TREE:\n";
                    print_string (string_of_prog abstractSyntaxTree);
                    print_string "\n\n\n\n";
                    print_string "PROGRAM OUTPUT (print statements):\n";
                    print_string ("\n\n\nFINAL STATE:\n" ^ (string_of_state (transactional_semantics abstractSyntaxTree)));
                    print_newline () 
                )
            )