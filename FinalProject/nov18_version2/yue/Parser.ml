
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VAR_DECL
    | VAR of (
# 12 "Parser.mly"
       (string)
# 13 "Parser.ml"
  )
    | SKIP
    | SEMICOLON
    | RPAREN
    | RBRACE
    | PROC_DECL
    | PRINT
    | PARALLEL
    | NUM of (
# 13 "Parser.mly"
       (int)
# 25 "Parser.ml"
  )
    | NULL
    | MINUS
    | MALLOC
    | LT
    | LPAREN
    | LBRACE
    | IF
    | FIELD of (
# 12 "Parser.mly"
       (string)
# 37 "Parser.ml"
  )
    | EQUALITY
    | EOF
    | ELSE
    | DOT
    | COLON
    | BOOL of (
# 14 "Parser.mly"
       (bool)
# 47 "Parser.ml"
  )
    | ATOM
    | ASSIGN
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState60
  | MenhirState55
  | MenhirState52
  | MenhirState49
  | MenhirState44
  | MenhirState42
  | MenhirState39
  | MenhirState37
  | MenhirState35
  | MenhirState33
  | MenhirState31
  | MenhirState28
  | MenhirState27
  | MenhirState19
  | MenhirState17
  | MenhirState13
  | MenhirState10
  | MenhirState8
  | MenhirState5
  | MenhirState1
  | MenhirState0

# 3 "Parser.mly"
   (* header *)
open AbstractSyntax

# 93 "Parser.ml"

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_boolean : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 103 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 113 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ATOM ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | FIELD _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | IF ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LBRACE ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LPAREN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | MALLOC ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | NULL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | NUM _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | PROC_DECL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | SKIP ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | VAR _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | VAR_DECL ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv234)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 153 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ATOM ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | FIELD _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
        | IF ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | LBRACE ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | LPAREN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | MALLOC ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | NULL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | NUM _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
        | PROC_DECL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | SKIP ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | VAR _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
        | VAR_DECL ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv236)
    | _ ->
        _menhir_fail ()

and _menhir_reduce21 : _menhir_env -> (('ttv_tail * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 194 "Parser.ml"
))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 198 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (e1 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 204 "Parser.ml"
    ))), _, (e2 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 208 "Parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 213 "Parser.ml"
    ) = 
# 39 "Parser.mly"
                          (Location (e1, e2))
# 217 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 224 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FIELD _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | NULL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | NUM _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | PROC_DECL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run19 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 250 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FIELD _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | NULL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | NUM _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | PROC_DECL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_reduce20 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 12 "Parser.mly"
       (string)
# 276 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (v : (
# 12 "Parser.mly"
       (string)
# 282 "Parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 287 "Parser.ml"
    ) = 
# 38 "Parser.mly"
            ( Var v)
# 291 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_cmd : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 298 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv171 * _menhir_state)) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 308 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv167 * _menhir_state)) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 318 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv165 * _menhir_state)) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 325 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (l : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 330 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 335 "Parser.ml"
            ) = 
# 64 "Parser.mly"
                               (Atom l)
# 339 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)) : 'freshtv168)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv169 * _menhir_state)) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 349 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)) : 'freshtv172)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv177 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 358 "Parser.ml"
        )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 362 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv173 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 372 "Parser.ml"
            )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 376 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ATOM ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | FIELD _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | LBRACE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | MALLOC ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | NULL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | NUM _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | PROC_DECL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | SKIP ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | VAR _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | VAR_DECL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv175 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 418 "Parser.ml"
            )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 422 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)) : 'freshtv178)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv181 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 431 "Parser.ml"
        )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 435 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 439 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv179 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 445 "Parser.ml"
        )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 449 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 453 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, _), _, (s1 : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 458 "Parser.ml"
        ))), _, (s2 : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 462 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 467 "Parser.ml"
        ) = 
# 62 "Parser.mly"
                                    (If (boolean, s1, s2))
# 471 "Parser.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)) : 'freshtv182)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 479 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PARALLEL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv183 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 489 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ATOM ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | FIELD _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | LBRACE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | MALLOC ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | NULL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | NUM _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | PROC_DECL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | SKIP ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | VAR _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | VAR_DECL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv184)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv185 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 529 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ATOM ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | FIELD _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | LBRACE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | MALLOC ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | NULL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | NUM _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | PROC_DECL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | SKIP ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | VAR _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | VAR_DECL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv186)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv187 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 571 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)) : 'freshtv190)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv197 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 580 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 584 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv193 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 594 "Parser.ml"
            ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 598 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv191 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 605 "Parser.ml"
            ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 609 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (c1 : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 614 "Parser.ml"
            ))), _, (c2 : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 618 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 623 "Parser.ml"
            ) = 
# 60 "Parser.mly"
                                            (Sequence (c1, c2))
# 627 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)) : 'freshtv194)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv195 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 637 "Parser.ml"
            ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 641 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)) : 'freshtv198)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv205 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 650 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 654 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv201 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 664 "Parser.ml"
            ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 668 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv199 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 675 "Parser.ml"
            ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 679 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (c1 : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 684 "Parser.ml"
            ))), _, (c2 : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 688 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 693 "Parser.ml"
            ) = 
# 63 "Parser.mly"
                                           (Parallel (c1, c2))
# 697 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)) : 'freshtv202)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv203 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 707 "Parser.ml"
            ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 711 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)) : 'freshtv206)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv209 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 720 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 724 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv207 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 730 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 734 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (v : (
# 12 "Parser.mly"
       (string)
# 739 "Parser.ml"
        ))), _, (c : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 743 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 748 "Parser.ml"
        ) = 
# 54 "Parser.mly"
                                     (VariableDeclaration (v, c))
# 752 "Parser.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)) : 'freshtv210)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv213 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 760 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 764 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv211 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 770 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 774 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (v : (
# 12 "Parser.mly"
       (string)
# 779 "Parser.ml"
        ))), _, (c : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 783 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 788 "Parser.ml"
        ) = 
# 40 "Parser.mly"
                                  (Proc (v, c))
# 792 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)) : 'freshtv214)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv217 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 800 "Parser.ml"
        )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 804 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv215 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 810 "Parser.ml"
        )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 814 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, _), _, _) = _menhir_stack in
        let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 820 "Parser.ml"
        ) = 
# 61 "Parser.mly"
                        (While (boolean, cmd))
# 824 "Parser.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)) : 'freshtv218)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231 * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 832 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv227 * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 842 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv225 * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 848 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (l : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 853 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 16 "Parser.mly"
      (AbstractSyntax.prog)
# 858 "Parser.ml"
            ) = 
# 30 "Parser.mly"
                (cmd l)
# 862 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv223) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 16 "Parser.mly"
      (AbstractSyntax.prog)
# 870 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv221) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 16 "Parser.mly"
      (AbstractSyntax.prog)
# 878 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv219) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 16 "Parser.mly"
      (AbstractSyntax.prog)
# 886 "Parser.ml"
            )) : (
# 16 "Parser.mly"
      (AbstractSyntax.prog)
# 890 "Parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv220)) : 'freshtv222)) : 'freshtv224)) : 'freshtv226)) : 'freshtv228)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv229 * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 900 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
    | _ ->
        _menhir_fail ()

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "Parser.mly"
       (string)
# 910 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce20 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "Parser.mly"
       (bool)
# 920 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv163) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 14 "Parser.mly"
       (bool)
# 930 "Parser.ml"
    )) : (
# 14 "Parser.mly"
       (bool)
# 934 "Parser.ml"
    )) = _v in
    ((let _v : (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 939 "Parser.ml"
    ) = 
# 45 "Parser.mly"
               (Bool b)
# 943 "Parser.ml"
     in
    _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 950 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 960 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv93 * _menhir_state) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 974 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv91 * _menhir_state) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 981 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 986 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 991 "Parser.ml"
            ) = 
# 34 "Parser.mly"
                           (e)
# 995 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv92)) : 'freshtv94)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv95 * _menhir_state) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1005 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv103 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1014 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1018 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN | ATOM | ELSE | EOF | EQUALITY | FIELD _ | IF | LBRACE | LPAREN | LT | MALLOC | MINUS | NULL | NUM _ | PARALLEL | PROC_DECL | RBRACE | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv99 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1030 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1034 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1039 "Parser.ml"
            ))), _, (e2 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1043 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1048 "Parser.ml"
            ) = 
# 36 "Parser.mly"
                            (MINUS (e1, e2))
# 1052 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv100)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv101 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1062 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1066 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)) : 'freshtv104)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv107 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1075 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1079 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN | ATOM | ELSE | EOF | EQUALITY | FIELD _ | IF | LBRACE | LPAREN | LT | MALLOC | NULL | NUM _ | PARALLEL | PROC_DECL | RBRACE | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv105 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1097 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1101 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)) : 'freshtv108)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv113 * _menhir_state * (
# 12 "Parser.mly"
       (string)
# 1110 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1114 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN | ATOM | ELSE | EOF | EQUALITY | FIELD _ | IF | LBRACE | LPAREN | LT | MALLOC | NULL | NUM _ | PARALLEL | PROC_DECL | RBRACE | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv109 * _menhir_state * (
# 12 "Parser.mly"
       (string)
# 1128 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1132 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (v : (
# 12 "Parser.mly"
       (string)
# 1137 "Parser.ml"
            ))), _, (e : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1141 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 1146 "Parser.ml"
            ) = 
# 57 "Parser.mly"
                          (Assign (v, e))
# 1150 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv110)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv111 * _menhir_state * (
# 12 "Parser.mly"
       (string)
# 1160 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1164 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)) : 'freshtv114)
    | MenhirState1 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1173 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | EQUALITY ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv115 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1185 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FIELD _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | NULL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | NUM _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | PROC_DECL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv116)
        | LT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1211 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FIELD _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | NULL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | NUM _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | PROC_DECL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv118)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv119 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1241 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)) : 'freshtv122)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1250 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1254 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | ATOM | FIELD _ | IF | LBRACE | LPAREN | MALLOC | NULL | NUM _ | PROC_DECL | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv123 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1268 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1272 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1277 "Parser.ml"
            ))), _, (e2 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1281 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 1286 "Parser.ml"
            ) = 
# 47 "Parser.mly"
                         (Lt (e1, e2))
# 1290 "Parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv124)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv125 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1300 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1304 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)) : 'freshtv128)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1313 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1317 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | ATOM | FIELD _ | IF | LBRACE | LPAREN | MALLOC | NULL | NUM _ | PROC_DECL | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv129 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1331 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1335 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1340 "Parser.ml"
            ))), _, (e2 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1344 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 1349 "Parser.ml"
            ) = 
# 46 "Parser.mly"
                               (Equal (e1, e2))
# 1353 "Parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv130)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv131 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1363 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1367 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
    | MenhirState0 | MenhirState60 | MenhirState5 | MenhirState8 | MenhirState55 | MenhirState52 | MenhirState27 | MenhirState49 | MenhirState35 | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1376 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv135 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1386 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FIELD _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | NULL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | NUM _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | PROC_DECL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv136)
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv137 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1412 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FIELD _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | NULL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | NUM _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
            | PROC_DECL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv138)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv139 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1442 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)) : 'freshtv142)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv149 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1451 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1455 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv145 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1469 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1473 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv143 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1480 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1484 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1489 "Parser.ml"
            ))), _, (e2 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1493 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 1498 "Parser.ml"
            ) = 
# 55 "Parser.mly"
                                    (Call (e1, e2))
# 1502 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)) : 'freshtv146)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv147 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1512 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1516 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)) : 'freshtv150)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1525 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1529 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv151 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1539 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1543 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FIELD _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | NULL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | NUM _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | PROC_DECL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | VAR _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv152)
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv153 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1577 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1581 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)) : 'freshtv156)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv161 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1590 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1594 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1598 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN | ATOM | ELSE | EOF | EQUALITY | FIELD _ | IF | LBRACE | LPAREN | LT | MALLOC | NULL | NUM _ | PARALLEL | PROC_DECL | RBRACE | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv157 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1612 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1616 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1620 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1625 "Parser.ml"
            ))), _, (e2 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1629 "Parser.ml"
            ))), _, (e3 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1633 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 1638 "Parser.ml"
            ) = 
# 58 "Parser.mly"
                                         (FieldAssign (e1, e2, e3))
# 1642 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv159 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1652 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1656 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1660 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)) : 'freshtv162)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 1673 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 1682 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv53 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 1691 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv55 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 1700 "Parser.ml"
        )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 1704 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv57 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1713 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1717 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1726 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1735 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 1749 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1758 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1767 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1786 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1795 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * (
# 12 "Parser.mly"
       (string)
# 1809 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 1818 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 1827 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv90)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | FIELD _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NULL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NUM _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | PROC_DECL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "Parser.mly"
       (string)
# 1878 "Parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv41 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 1889 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ATOM ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | FIELD _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | LBRACE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | MALLOC ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | NULL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | NUM _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
            | PROC_DECL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | SKIP ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | VAR _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
            | VAR_DECL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv42)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv43 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 1931 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)) : 'freshtv46)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "Parser.mly"
       (string)
# 1946 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state * (
# 12 "Parser.mly"
       (string)
# 1958 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FIELD _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
        | LPAREN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | NULL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | NUM _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
        | PROC_DECL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | VAR _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv38)
    | DOT | LPAREN | MINUS ->
        _menhir_reduce20 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state * (
# 12 "Parser.mly"
       (string)
# 1988 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 2002 "Parser.ml"
    ) = 
# 59 "Parser.mly"
           (Skip)
# 2006 "Parser.ml"
     in
    _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv36)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "Parser.mly"
       (string)
# 2022 "Parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv27 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 2033 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ATOM ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | FIELD _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | LBRACE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | MALLOC ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | NULL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | NUM _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | PROC_DECL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | SKIP ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | VAR _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | VAR_DECL ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv28)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv29 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 2075 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)) : 'freshtv32)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "Parser.mly"
       (int)
# 2090 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 13 "Parser.mly"
       (int)
# 2100 "Parser.ml"
    )) : (
# 13 "Parser.mly"
       (int)
# 2104 "Parser.ml"
    )) = _v in
    ((let _v : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 2109 "Parser.ml"
    ) = 
# 35 "Parser.mly"
            (Num n)
# 2113 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 2126 "Parser.ml"
    ) = 
# 37 "Parser.mly"
           (Null)
# 2130 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv24)

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VAR _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv15 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 12 "Parser.mly"
       (string)
# 2152 "Parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv11 * _menhir_state)) * (
# 12 "Parser.mly"
       (string)
# 2163 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv9 * _menhir_state)) * (
# 12 "Parser.mly"
       (string)
# 2170 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), (v : (
# 12 "Parser.mly"
       (string)
# 2175 "Parser.ml"
                ))) = _menhir_stack in
                let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 2180 "Parser.ml"
                ) = 
# 56 "Parser.mly"
                                 (Malloc v)
# 2184 "Parser.ml"
                 in
                _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)) : 'freshtv12)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv13 * _menhir_state)) * (
# 12 "Parser.mly"
       (string)
# 2194 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)) : 'freshtv16)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv17 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)) : 'freshtv20)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FIELD _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | NULL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | NUM _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | PROC_DECL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ATOM ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FIELD _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LBRACE ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MALLOC ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NULL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NUM _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | PROC_DECL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | SKIP ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | VAR _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | VAR_DECL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | FIELD _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | NULL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | NUM _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | PROC_DECL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | VAR _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "Parser.mly"
       (string)
# 2301 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((f : (
# 12 "Parser.mly"
       (string)
# 2311 "Parser.ml"
    )) : (
# 12 "Parser.mly"
       (string)
# 2315 "Parser.ml"
    )) = _v in
    ((let _v : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 2320 "Parser.ml"
    ) = 
# 33 "Parser.mly"
              ( Field f )
# 2324 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ATOM ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | FIELD _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | IF ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LBRACE ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LPAREN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | MALLOC ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | NULL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | NUM _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | PROC_DECL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | SKIP ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | VAR _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | VAR_DECL ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv6)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 16 "Parser.mly"
      (AbstractSyntax.prog)
# 2393 "Parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ATOM ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FIELD _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LBRACE ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MALLOC ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NULL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NUM _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | PROC_DECL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SKIP ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | VAR _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | VAR_DECL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 2441 "Parser.ml"
