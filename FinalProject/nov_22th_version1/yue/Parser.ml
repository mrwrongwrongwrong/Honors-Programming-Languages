
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
    | PARALLEL
    | ONE of (
# 13 "Parser.mly"
       (int)
# 24 "Parser.ml"
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
# 36 "Parser.ml"
  )
    | EQUALITY
    | EOF
    | ELSE
    | DOT
    | COLON
    | BOOL of (
# 14 "Parser.mly"
       (bool)
# 46 "Parser.ml"
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

# 92 "Parser.ml"

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_boolean : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 102 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 112 "Parser.ml"
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
        | ONE _v ->
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
# 152 "Parser.ml"
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
        | ONE _v ->
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
# 193 "Parser.ml"
))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 197 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (e1 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 203 "Parser.ml"
    ))), _, (e2 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 207 "Parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 212 "Parser.ml"
    ) = 
# 42 "Parser.mly"
                          (Location (e1, e2))
# 216 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 223 "Parser.ml"
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
    | ONE _v ->
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
# 249 "Parser.ml"
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
    | ONE _v ->
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
# 275 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (v : (
# 12 "Parser.mly"
       (string)
# 281 "Parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 286 "Parser.ml"
    ) = 
# 41 "Parser.mly"
            ( Var v)
# 290 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_cmd : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 297 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv171 * _menhir_state)) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 307 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv167 * _menhir_state)) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 317 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv165 * _menhir_state)) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 324 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (l : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 329 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 334 "Parser.ml"
            ) = 
# 63 "Parser.mly"
                               (Atom l)
# 338 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)) : 'freshtv168)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv169 * _menhir_state)) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 348 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)) : 'freshtv172)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv177 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 357 "Parser.ml"
        )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 361 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv173 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 371 "Parser.ml"
            )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 375 "Parser.ml"
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
            | ONE _v ->
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
# 417 "Parser.ml"
            )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 421 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)) : 'freshtv178)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv181 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 430 "Parser.ml"
        )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 434 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 438 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv179 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 444 "Parser.ml"
        )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 448 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 452 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, _), _, (s1 : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 457 "Parser.ml"
        ))), _, (s2 : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 461 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 466 "Parser.ml"
        ) = 
# 61 "Parser.mly"
                                    (If (boolean, s1, s2))
# 470 "Parser.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)) : 'freshtv182)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 478 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PARALLEL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv183 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 488 "Parser.ml"
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
            | ONE _v ->
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
# 528 "Parser.ml"
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
            | ONE _v ->
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
# 570 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)) : 'freshtv190)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv197 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 579 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 583 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv193 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 593 "Parser.ml"
            ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 597 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv191 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 604 "Parser.ml"
            ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 608 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (c1 : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 613 "Parser.ml"
            ))), _, (c2 : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 617 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 622 "Parser.ml"
            ) = 
# 59 "Parser.mly"
                                            (Sequence (c1, c2))
# 626 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)) : 'freshtv194)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv195 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 636 "Parser.ml"
            ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 640 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)) : 'freshtv198)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv205 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 649 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 653 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv201 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 663 "Parser.ml"
            ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 667 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv199 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 674 "Parser.ml"
            ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 678 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (c1 : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 683 "Parser.ml"
            ))), _, (c2 : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 687 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 692 "Parser.ml"
            ) = 
# 62 "Parser.mly"
                                           (Parallel (c1, c2))
# 696 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)) : 'freshtv202)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv203 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 706 "Parser.ml"
            ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 710 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)) : 'freshtv206)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv209 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 719 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 723 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv207 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 729 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 733 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (v : (
# 12 "Parser.mly"
       (string)
# 738 "Parser.ml"
        ))), _, (c : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 742 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 747 "Parser.ml"
        ) = 
# 53 "Parser.mly"
                                     (VariableDeclaration (v, c))
# 751 "Parser.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)) : 'freshtv210)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv213 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 759 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 763 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv211 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 769 "Parser.ml"
        ))) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 773 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (v : (
# 12 "Parser.mly"
       (string)
# 778 "Parser.ml"
        ))), _, (c : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 782 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 787 "Parser.ml"
        ) = 
# 43 "Parser.mly"
                                  (Proc (v, c))
# 791 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)) : 'freshtv214)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv217 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 799 "Parser.ml"
        )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 803 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv215 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 809 "Parser.ml"
        )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 813 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, _), _, _) = _menhir_stack in
        let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 819 "Parser.ml"
        ) = 
# 60 "Parser.mly"
                        (While (boolean, cmd))
# 823 "Parser.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)) : 'freshtv218)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231 * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 831 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv227 * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 841 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv225 * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 847 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (l : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 852 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 16 "Parser.mly"
      (AbstractSyntax.prog)
# 857 "Parser.ml"
            ) = 
# 33 "Parser.mly"
                  (cmd l)
# 861 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv223) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 16 "Parser.mly"
      (AbstractSyntax.prog)
# 869 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv221) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 16 "Parser.mly"
      (AbstractSyntax.prog)
# 877 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv219) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 16 "Parser.mly"
      (AbstractSyntax.prog)
# 885 "Parser.ml"
            )) : (
# 16 "Parser.mly"
      (AbstractSyntax.prog)
# 889 "Parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv220)) : 'freshtv222)) : 'freshtv224)) : 'freshtv226)) : 'freshtv228)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv229 * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 899 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
    | _ ->
        _menhir_fail ()

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "Parser.mly"
       (string)
# 909 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce20 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "Parser.mly"
       (bool)
# 919 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv163) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 14 "Parser.mly"
       (bool)
# 929 "Parser.ml"
    )) : (
# 14 "Parser.mly"
       (bool)
# 933 "Parser.ml"
    )) = _v in
    ((let _v : (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 938 "Parser.ml"
    ) = 
# 48 "Parser.mly"
               (Bool b)
# 942 "Parser.ml"
     in
    _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 949 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 959 "Parser.ml"
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
# 973 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv91 * _menhir_state) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 980 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 985 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 990 "Parser.ml"
            ) = 
# 37 "Parser.mly"
                           (e)
# 994 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv92)) : 'freshtv94)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv95 * _menhir_state) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1004 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv103 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1013 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1017 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN | ATOM | ELSE | EOF | EQUALITY | FIELD _ | IF | LBRACE | LPAREN | LT | MALLOC | MINUS | NULL | ONE _ | PARALLEL | PROC_DECL | RBRACE | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv99 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1029 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1033 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1038 "Parser.ml"
            ))), _, (e2 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1042 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1047 "Parser.ml"
            ) = 
# 39 "Parser.mly"
                            (MINUS (e1, e2))
# 1051 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv100)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv101 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1061 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1065 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)) : 'freshtv104)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv107 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1074 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1078 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN | ATOM | ELSE | EOF | EQUALITY | FIELD _ | IF | LBRACE | LPAREN | LT | MALLOC | NULL | ONE _ | PARALLEL | PROC_DECL | RBRACE | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv105 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1096 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1100 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)) : 'freshtv108)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv113 * _menhir_state * (
# 12 "Parser.mly"
       (string)
# 1109 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1113 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN | ATOM | ELSE | EOF | EQUALITY | FIELD _ | IF | LBRACE | LPAREN | LT | MALLOC | NULL | ONE _ | PARALLEL | PROC_DECL | RBRACE | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv109 * _menhir_state * (
# 12 "Parser.mly"
       (string)
# 1127 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1131 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (v : (
# 12 "Parser.mly"
       (string)
# 1136 "Parser.ml"
            ))), _, (e : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1140 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 1145 "Parser.ml"
            ) = 
# 56 "Parser.mly"
                          (Assign (v, e))
# 1149 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv110)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv111 * _menhir_state * (
# 12 "Parser.mly"
       (string)
# 1159 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1163 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)) : 'freshtv114)
    | MenhirState1 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1172 "Parser.ml"
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
# 1184 "Parser.ml"
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
            | ONE _v ->
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
# 1210 "Parser.ml"
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
            | ONE _v ->
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
# 1240 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)) : 'freshtv122)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1249 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1253 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | ATOM | FIELD _ | IF | LBRACE | LPAREN | MALLOC | NULL | ONE _ | PROC_DECL | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv123 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1267 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1271 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1276 "Parser.ml"
            ))), _, (e2 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1280 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 1285 "Parser.ml"
            ) = 
# 50 "Parser.mly"
                         (Lt (e1, e2))
# 1289 "Parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv124)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv125 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1299 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1303 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)) : 'freshtv128)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1312 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1316 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | ATOM | FIELD _ | IF | LBRACE | LPAREN | MALLOC | NULL | ONE _ | PROC_DECL | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv129 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1330 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1334 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1339 "Parser.ml"
            ))), _, (e2 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1343 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 1348 "Parser.ml"
            ) = 
# 49 "Parser.mly"
                               (Equal (e1, e2))
# 1352 "Parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv130)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv131 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1362 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1366 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
    | MenhirState0 | MenhirState60 | MenhirState5 | MenhirState8 | MenhirState55 | MenhirState52 | MenhirState27 | MenhirState49 | MenhirState35 | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1375 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv135 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1385 "Parser.ml"
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
            | ONE _v ->
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
# 1411 "Parser.ml"
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
            | ONE _v ->
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
# 1441 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)) : 'freshtv142)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv149 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1450 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1454 "Parser.ml"
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
# 1468 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1472 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv143 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1479 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1483 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1488 "Parser.ml"
            ))), _, (e2 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1492 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 1497 "Parser.ml"
            ) = 
# 54 "Parser.mly"
                                    (Call (e1, e2))
# 1501 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)) : 'freshtv146)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv147 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1511 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1515 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)) : 'freshtv150)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1524 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1528 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv151 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1538 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1542 "Parser.ml"
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
            | ONE _v ->
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
# 1576 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1580 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)) : 'freshtv156)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv161 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1589 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1593 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1597 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN | ATOM | ELSE | EOF | EQUALITY | FIELD _ | IF | LBRACE | LPAREN | LT | MALLOC | NULL | ONE _ | PARALLEL | PROC_DECL | RBRACE | RPAREN | SEMICOLON | SKIP | VAR _ | VAR_DECL | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv157 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1611 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1615 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1619 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1624 "Parser.ml"
            ))), _, (e2 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1628 "Parser.ml"
            ))), _, (e3 : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1632 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 1637 "Parser.ml"
            ) = 
# 57 "Parser.mly"
                                         (FieldAssign (e1, e2, e3))
# 1641 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv159 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1651 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1655 "Parser.ml"
            ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1659 "Parser.ml"
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
# 1672 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 1681 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv53 * _menhir_state) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 1690 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv55 * _menhir_state) * _menhir_state * (
# 19 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 1699 "Parser.ml"
        )) * _menhir_state * (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 1703 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv57 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1712 "Parser.ml"
        ))) * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1716 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1725 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1734 "Parser.ml"
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
# 1748 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1757 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1766 "Parser.ml"
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
# 1785 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 1794 "Parser.ml"
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
# 1808 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 1817 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state) * (
# 12 "Parser.mly"
       (string)
# 1826 "Parser.ml"
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
    | ONE _v ->
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
# 1877 "Parser.ml"
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
# 1888 "Parser.ml"
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
            | ONE _v ->
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
# 1930 "Parser.ml"
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
# 1945 "Parser.ml"
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
# 1957 "Parser.ml"
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
        | ONE _v ->
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
# 1987 "Parser.ml"
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
# 2001 "Parser.ml"
    ) = 
# 58 "Parser.mly"
           (Skip)
# 2005 "Parser.ml"
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
# 2021 "Parser.ml"
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
# 2032 "Parser.ml"
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
            | ONE _v ->
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
# 2074 "Parser.ml"
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
# 2089 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 13 "Parser.mly"
       (int)
# 2099 "Parser.ml"
    )) : (
# 13 "Parser.mly"
       (int)
# 2103 "Parser.ml"
    )) = _v in
    ((let _v : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 2108 "Parser.ml"
    ) = 
# 38 "Parser.mly"
            (One n)
# 2112 "Parser.ml"
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
# 2125 "Parser.ml"
    ) = 
# 40 "Parser.mly"
           (Null)
# 2129 "Parser.ml"
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
# 2151 "Parser.ml"
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
# 2162 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv9 * _menhir_state)) * (
# 12 "Parser.mly"
       (string)
# 2169 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), (v : (
# 12 "Parser.mly"
       (string)
# 2174 "Parser.ml"
                ))) = _menhir_stack in
                let _v : (
# 17 "Parser.mly"
      (AbstractSyntax.cmd)
# 2179 "Parser.ml"
                ) = 
# 55 "Parser.mly"
                                 (Malloc v)
# 2183 "Parser.ml"
                 in
                _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)) : 'freshtv12)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv13 * _menhir_state)) * (
# 12 "Parser.mly"
       (string)
# 2193 "Parser.ml"
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
    | ONE _v ->
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
    | ONE _v ->
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
    | ONE _v ->
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
# 2300 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((f : (
# 12 "Parser.mly"
       (string)
# 2310 "Parser.ml"
    )) : (
# 12 "Parser.mly"
       (string)
# 2314 "Parser.ml"
    )) = _v in
    ((let _v : (
# 18 "Parser.mly"
      (AbstractSyntax.expression)
# 2319 "Parser.ml"
    ) = 
# 36 "Parser.mly"
              ( Field f )
# 2323 "Parser.ml"
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
        | ONE _v ->
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
# 2392 "Parser.ml"
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
    | ONE _v ->
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
  

# 2440 "Parser.ml"
