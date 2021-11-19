(* File calculatorLEX.mll *)
{
open Parser;; (* Type token defined in CalculatorMENHIR.mli *)
exception Eof;;
exception Failure of string;;
}


rule token = parse
  | [' ' '\t' '\n'] { token lexbuf } (* skip blanks and tabs *) (* removed newline token *)
  | "var" { VAR_DECL }
  | "true" { BOOL true }
  | "false" { BOOL false }
  | "null" { NULL }
  | "proc" { PROC_DECL }
  | "malloc" { MALLOC }
  | "skip" { SKIP }
  | "while" { WHILE }
  | "if" { IF }
  | "else" { ELSE }
  | "|||" { PARALLEL }
  | "atom" { ATOM }
  | "print" { PRINT }
  | (['a'-'z'])(['a'-'z'] | ['A'-'Z'] | ['0'-'9'] | '_')* as idt { VAR idt }
  | (['A'-'Z'])(['a'-'z'] | ['A'-'Z'] | ['0'-'9'] | '_')* as idt { FIELD idt }
  | ['0'-'9']+ as num { NUM (int_of_string num) }
  | "==" { EQUALITY } (* decide whether use a string or two chars *)
  | '<' { LT } 
  | '{' { LBRACE }
  | '}' { RBRACE }
  | ':' { COLON }
  | ';' { SEMICOLON }
  | '=' { ASSIGN }
  | '.' { DOT }
  | '-' { MINUS }
  | '(' { LPAREN }
  | ')' { RPAREN }  
  | eof { EOF }
  | _ { failwith "unexpected token" }

(*raise (Failure ("Lexer failed. " ^ Printf.sprintf "At offset %d: unexpected character.\n" (Lexing.lexeme_start lexbuf)))*)
