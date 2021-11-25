
(* The type of tokens. *)

type token = 
  | WHILE
  | VAR_DECL
  | VAR of (string)
  | SKIP
  | SEMICOLON
  | RPAREN
  | RBRACE
  | PROC_DECL
  | PARALLEL
  | ONE of (int)
  | NULL
  | MINUS
  | MALLOC
  | LT
  | LPAREN
  | LBRACE
  | IF
  | FIELD of (string)
  | EQUALITY
  | EOF
  | ELSE
  | DOT
  | COLON
  | BOOL of (bool)
  | ATOM
  | ASSIGN

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (AbstractSyntax.prog)
