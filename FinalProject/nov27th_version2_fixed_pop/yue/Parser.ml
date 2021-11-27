
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VAR_DECL
    | VAR of (
# 15 "Parser.mly"
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
# 16 "Parser.mly"
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
# 15 "Parser.mly"
       (string)
# 36 "Parser.ml"
  )
    | EQUALITY
    | EOF
    | ELSE
    | DOT
    | COLON
    | BOOL of (
# 17 "Parser.mly"
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
# 22 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 102 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv231 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv232)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv234)
    | _ ->
        _menhir_fail ()

and _menhir_reduce21 : _menhir_env -> (('ttv_tail * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 193 "Parser.ml"
))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 197 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (e1 : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 203 "Parser.ml"
    ))), _, (e2 : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 207 "Parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 212 "Parser.ml"
    ) = 
# 48 "Parser.mly"
                          (Location (e1, e2))
# 216 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 21 "Parser.mly"
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
# 21 "Parser.mly"
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
# 15 "Parser.mly"
       (string)
# 275 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (v : (
# 15 "Parser.mly"
       (string)
# 281 "Parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 286 "Parser.ml"
    ) = 
# 47 "Parser.mly"
            ( Var v)
# 290 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_cmd : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 297 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv169 * _menhir_state)) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 307 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv165 * _menhir_state)) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 317 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv163 * _menhir_state)) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 324 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (l : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 329 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 334 "Parser.ml"
            ) = 
# 69 "Parser.mly"
                               (Atom l)
# 338 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)) : 'freshtv166)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv167 * _menhir_state)) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 348 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)) : 'freshtv170)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv175 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 357 "Parser.ml"
        )) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 361 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv171 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 371 "Parser.ml"
            )) * _menhir_state * (
# 20 "Parser.mly"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv172)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv173 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 417 "Parser.ml"
            )) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 421 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)) : 'freshtv176)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv179 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 430 "Parser.ml"
        )) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 434 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 438 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv177 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 444 "Parser.ml"
        )) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 448 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 452 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, _), _, (s1 : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 457 "Parser.ml"
        ))), _, (s2 : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 461 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 466 "Parser.ml"
        ) = 
# 67 "Parser.mly"
                                    (If (boolean, s1, s2))
# 470 "Parser.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)) : 'freshtv180)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 478 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PARALLEL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv181 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv182)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv183 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv184)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv185 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 570 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)) : 'freshtv188)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv195 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 579 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 583 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv191 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 593 "Parser.ml"
            ))) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 597 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv189 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 604 "Parser.ml"
            ))) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 608 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (c1 : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 613 "Parser.ml"
            ))), _, (c2 : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 617 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 622 "Parser.ml"
            ) = 
# 65 "Parser.mly"
                                            (Sequence (c1, c2))
# 626 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv190)) : 'freshtv192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv193 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 636 "Parser.ml"
            ))) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 640 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)) : 'freshtv196)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv203 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 649 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 653 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv199 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 663 "Parser.ml"
            ))) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 667 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv197 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 674 "Parser.ml"
            ))) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 678 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (c1 : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 683 "Parser.ml"
            ))), _, (c2 : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 687 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 692 "Parser.ml"
            ) = 
# 68 "Parser.mly"
                                           (Parallel (c1, c2))
# 696 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)) : 'freshtv200)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv201 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 706 "Parser.ml"
            ))) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 710 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)) : 'freshtv204)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv207 * _menhir_state) * (
# 15 "Parser.mly"
       (string)
# 719 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 723 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv205 * _menhir_state) * (
# 15 "Parser.mly"
       (string)
# 729 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 733 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (v : (
# 15 "Parser.mly"
       (string)
# 738 "Parser.ml"
        ))), _, (c : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 742 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 747 "Parser.ml"
        ) = 
# 59 "Parser.mly"
                                     (VariableDeclaration (v, c))
# 751 "Parser.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv206)) : 'freshtv208)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv211 * _menhir_state) * (
# 15 "Parser.mly"
       (string)
# 759 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 763 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv209 * _menhir_state) * (
# 15 "Parser.mly"
       (string)
# 769 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 773 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (v : (
# 15 "Parser.mly"
       (string)
# 778 "Parser.ml"
        ))), _, (c : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 782 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 787 "Parser.ml"
        ) = 
# 49 "Parser.mly"
                                  (Proc (v, c))
# 791 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)) : 'freshtv212)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv215 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 799 "Parser.ml"
        )) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 803 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv213 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 809 "Parser.ml"
        )) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 813 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, _), _, _) = _menhir_stack in
        let _v : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 819 "Parser.ml"
        ) = 
# 66 "Parser.mly"
                        (While (boolean, cmd))
# 823 "Parser.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv214)) : 'freshtv216)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 831 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv225 * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 841 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv223 * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 847 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (l : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 852 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 19 "Parser.mly"
      (AbstractSyntax.prog)
# 857 "Parser.ml"
            ) = 
# 39 "Parser.mly"
                  (cmd l)
# 861 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv221) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 19 "Parser.mly"
      (AbstractSyntax.prog)
# 869 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv219) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 19 "Parser.mly"
      (AbstractSyntax.prog)
# 877 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv217) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 19 "Parser.mly"
      (AbstractSyntax.prog)
# 885 "Parser.ml"
            )) : (
# 19 "Parser.mly"
      (AbstractSyntax.prog)
# 889 "Parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv218)) : 'freshtv220)) : 'freshtv222)) : 'freshtv224)) : 'freshtv226)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv227 * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 899 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)
    | _ ->
        _menhir_fail ()

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "Parser.mly"
       (string)
# 909 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce20 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "Parser.mly"
       (bool)
# 919 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 17 "Parser.mly"
       (bool)
# 929 "Parser.ml"
    )) : (
# 17 "Parser.mly"
       (bool)
# 933 "Parser.ml"
    )) = _v in
    ((let _v : (
# 22 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 938 "Parser.ml"
    ) = 
# 54 "Parser.mly"
               (Bool b)
# 942 "Parser.ml"
     in
    _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 949 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state) * _menhir_state * (
# 21 "Parser.mly"
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
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 973 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv91 * _menhir_state) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 980 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 985 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 990 "Parser.ml"
            ) = 
# 43 "Parser.mly"
                           (e)
# 994 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv92)) : 'freshtv94)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv95 * _menhir_state) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1004 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv103 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1013 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
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
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1029 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1033 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1038 "Parser.ml"
            ))), _, (e2 : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1042 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1047 "Parser.ml"
            ) = 
# 45 "Parser.mly"
                            (MINUS (e1, e2))
# 1051 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv100)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv101 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1061 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1065 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)) : 'freshtv104)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1074 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1078 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) : 'freshtv106)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * _menhir_state * (
# 15 "Parser.mly"
       (string)
# 1086 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1090 "Parser.ml"
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
            let (_menhir_stack : (('freshtv107 * _menhir_state * (
# 15 "Parser.mly"
       (string)
# 1104 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1108 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (v : (
# 15 "Parser.mly"
       (string)
# 1113 "Parser.ml"
            ))), _, (e : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1117 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 1122 "Parser.ml"
            ) = 
# 62 "Parser.mly"
                          (Assign (v, e))
# 1126 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv108)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv109 * _menhir_state * (
# 15 "Parser.mly"
       (string)
# 1136 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1140 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)) : 'freshtv112)
    | MenhirState1 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1149 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack)
        | EQUALITY ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv113 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1161 "Parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv114)
        | LT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv115 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1187 "Parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv116)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv117 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1217 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)) : 'freshtv120)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1226 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1230 "Parser.ml"
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
            let (_menhir_stack : (('freshtv121 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1244 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1248 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1253 "Parser.ml"
            ))), _, (e2 : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1257 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 22 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 1262 "Parser.ml"
            ) = 
# 56 "Parser.mly"
                         (Lt (e1, e2))
# 1266 "Parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv123 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1276 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1280 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)) : 'freshtv126)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1289 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1293 "Parser.ml"
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
            let (_menhir_stack : (('freshtv127 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1307 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1311 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1316 "Parser.ml"
            ))), _, (e2 : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1320 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 22 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 1325 "Parser.ml"
            ) = 
# 55 "Parser.mly"
                               (Equal (e1, e2))
# 1329 "Parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv129 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1339 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1343 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)) : 'freshtv132)
    | MenhirState0 | MenhirState60 | MenhirState5 | MenhirState8 | MenhirState55 | MenhirState52 | MenhirState27 | MenhirState49 | MenhirState35 | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1352 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv133 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1362 "Parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv134)
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv135 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1388 "Parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv136)
        | MINUS ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv137 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1418 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)) : 'freshtv140)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv147 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1427 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1431 "Parser.ml"
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
            let (_menhir_stack : (('freshtv143 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1445 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1449 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv141 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1456 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1460 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1465 "Parser.ml"
            ))), _, (e2 : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1469 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 1474 "Parser.ml"
            ) = 
# 60 "Parser.mly"
                                    (Call (e1, e2))
# 1478 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)) : 'freshtv144)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv145 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1488 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1492 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)) : 'freshtv148)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv153 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1501 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1505 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv149 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1515 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1519 "Parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv150)
        | DOT | LPAREN | MINUS ->
            _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv151 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1549 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1553 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)) : 'freshtv154)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv159 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1562 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1566 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1570 "Parser.ml"
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
            let (_menhir_stack : (((('freshtv155 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1584 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1588 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1592 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1597 "Parser.ml"
            ))), _, (e2 : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1601 "Parser.ml"
            ))), _, (e3 : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1605 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 1610 "Parser.ml"
            ) = 
# 63 "Parser.mly"
                                         (FieldAssign (e1, e2, e3))
# 1614 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv157 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1624 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1628 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1632 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)) : 'freshtv160)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 1645 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 1654 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv53 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 1663 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv55 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 1672 "Parser.ml"
        )) * _menhir_state * (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 1676 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv57 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1685 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1689 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1698 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1707 "Parser.ml"
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
# 22 "Parser.mly"
      (AbstractSyntax.bool_expression)
# 1721 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1730 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1739 "Parser.ml"
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
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1758 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 1767 "Parser.ml"
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
# 15 "Parser.mly"
       (string)
# 1781 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state) * (
# 15 "Parser.mly"
       (string)
# 1790 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state) * (
# 15 "Parser.mly"
       (string)
# 1799 "Parser.ml"
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
# 15 "Parser.mly"
       (string)
# 1850 "Parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv41 * _menhir_state) * (
# 15 "Parser.mly"
       (string)
# 1861 "Parser.ml"
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
# 15 "Parser.mly"
       (string)
# 1903 "Parser.ml"
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
# 15 "Parser.mly"
       (string)
# 1918 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state * (
# 15 "Parser.mly"
       (string)
# 1930 "Parser.ml"
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
# 15 "Parser.mly"
       (string)
# 1960 "Parser.ml"
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
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 1974 "Parser.ml"
    ) = 
# 64 "Parser.mly"
           (Skip)
# 1978 "Parser.ml"
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
# 15 "Parser.mly"
       (string)
# 1994 "Parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv27 * _menhir_state) * (
# 15 "Parser.mly"
       (string)
# 2005 "Parser.ml"
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
# 15 "Parser.mly"
       (string)
# 2047 "Parser.ml"
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
# 16 "Parser.mly"
       (int)
# 2062 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 16 "Parser.mly"
       (int)
# 2072 "Parser.ml"
    )) : (
# 16 "Parser.mly"
       (int)
# 2076 "Parser.ml"
    )) = _v in
    ((let _v : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 2081 "Parser.ml"
    ) = 
# 44 "Parser.mly"
            (One n)
# 2085 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 2098 "Parser.ml"
    ) = 
# 46 "Parser.mly"
           (Null)
# 2102 "Parser.ml"
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
# 15 "Parser.mly"
       (string)
# 2124 "Parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv11 * _menhir_state)) * (
# 15 "Parser.mly"
       (string)
# 2135 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv9 * _menhir_state)) * (
# 15 "Parser.mly"
       (string)
# 2142 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), (v : (
# 15 "Parser.mly"
       (string)
# 2147 "Parser.ml"
                ))) = _menhir_stack in
                let _v : (
# 20 "Parser.mly"
      (AbstractSyntax.cmd)
# 2152 "Parser.ml"
                ) = 
# 61 "Parser.mly"
                                 (Malloc v)
# 2156 "Parser.ml"
                 in
                _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)) : 'freshtv12)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv13 * _menhir_state)) * (
# 15 "Parser.mly"
       (string)
# 2166 "Parser.ml"
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
# 15 "Parser.mly"
       (string)
# 2273 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((f : (
# 15 "Parser.mly"
       (string)
# 2283 "Parser.ml"
    )) : (
# 15 "Parser.mly"
       (string)
# 2287 "Parser.ml"
    )) = _v in
    ((let _v : (
# 21 "Parser.mly"
      (AbstractSyntax.expression)
# 2292 "Parser.ml"
    ) = 
# 42 "Parser.mly"
              ( Field f )
# 2296 "Parser.ml"
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
# 19 "Parser.mly"
      (AbstractSyntax.prog)
# 2365 "Parser.ml"
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
  

# 2413 "Parser.ml"
