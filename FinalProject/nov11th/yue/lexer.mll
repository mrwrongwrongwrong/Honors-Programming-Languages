(* File calculatorLEX.mll *)
{
open Parser;; (* Type token defined in CalculatorMENHIR.mli *)
exception Eof;;
exception Failure of string;;
}
rule token = parse
  | [' ' '\t'] { token lexbuf } (* skip blanks and tabs *)
  | ['\n' ]    { EOL }
  | '.'        { DEREFERENCE }
  | ';'        { SEMICOLON }
  | ':' '='    { ASSIGN }
  | '+'        { PLUS }
  | '-'        { MINUS }
  | '*'        { TIMES }
  | '/'        { DIV }
  | '('        { LPAREN }
  | ')'        { RPAREN }
  | '{'        { LBRACE }
  | '}'        { RBRACE }
  | eof        { raise Eof }
  | '<'        { LT }
  | '>'        { RT }
  | '<='       { LEQ }
  | '>='       { GEQ }
  | '=='       { EQUALITY }
  | 'print'    { PRINT }
  | 'atom'     { ATOM }
  | '|||'      { PARALLEL }
  | 'true'     { BOOL true }
  | 'false'    { BOOL false }
  | 'null'     { NULL }
  | 'skip'     { SKIP }
  | 'if'       { IF }
  | 'else'     { ELSE }
  | 'while'    { WHILE}
  | 'proc'     { PROC_DECL }
  | 'malloc'   { MALLOC }
  | 'var'      { VAR_DECL }
  | (['a'-'z'] | ['A'-'Z'])(['a'-'z'] | ['A'-'Z'] | ['0'-'9'])* as idt
               { IDENT idt }
  | ['0'-'9']+ as num
               { NUM (int_of_string num) }
  | _ {raise (Failure ("Unexpected token in Laxer" ^ Printf.sprintf "At position %d" (Lexing.lexeme_start lexbuf))) }