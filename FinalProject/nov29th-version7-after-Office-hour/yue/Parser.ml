
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
open Abstractsyntax

# 92 "Parser.ml"

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_boolean : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "Parser.mly"
      (Abstractsyntax.bool_expression)
# 102 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv231 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (Abstractsyntax.bool_expression)
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
      (Abstractsyntax.bool_expression)
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
      (Abstractsyntax.expression)
# 193 "Parser.ml"
))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 197 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (e1 : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 203 "Parser.ml"
    ))), _, (e2 : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 207 "Parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 212 "Parser.ml"
    ) = 
# 42 "Parser.mly"
                          (Dot (e1, e2))
# 216 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
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
      (Abstractsyntax.expression)
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
      (Abstractsyntax.expression)
# 286 "Parser.ml"
    ) = 
# 41 "Parser.mly"
            ( Var v)
# 290 "Parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_cmd : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 297 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv169 * _menhir_state)) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 307 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv165 * _menhir_state)) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 317 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv163 * _menhir_state)) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 324 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (l : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 329 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 334 "Parser.ml"
            ) = 
# 60 "Parser.mly"
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
      (Abstractsyntax.cmd)
# 348 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)) : 'freshtv170)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv175 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (Abstractsyntax.bool_expression)
# 357 "Parser.ml"
        )) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 361 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv171 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (Abstractsyntax.bool_expression)
# 371 "Parser.ml"
            )) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
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
      (Abstractsyntax.bool_expression)
# 417 "Parser.ml"
            )) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 421 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)) : 'freshtv176)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv179 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (Abstractsyntax.bool_expression)
# 430 "Parser.ml"
        )) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 434 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 438 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv177 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (Abstractsyntax.bool_expression)
# 444 "Parser.ml"
        )) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 448 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 452 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (b1 : (
# 22 "Parser.mly"
      (Abstractsyntax.bool_expression)
# 457 "Parser.ml"
        ))), _, (s1 : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 461 "Parser.ml"
        ))), _, (s2 : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 465 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 470 "Parser.ml"
        ) = 
# 58 "Parser.mly"
                                       (If (b1, s1, s2))
# 474 "Parser.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)) : 'freshtv180)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 482 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PARALLEL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv181 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 492 "Parser.ml"
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
      (Abstractsyntax.cmd)
# 532 "Parser.ml"
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
      (Abstractsyntax.cmd)
# 574 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)) : 'freshtv188)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv195 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 583 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 587 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv191 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 597 "Parser.ml"
            ))) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 601 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv189 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 608 "Parser.ml"
            ))) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 612 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (c1 : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 617 "Parser.ml"
            ))), _, (c2 : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 621 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 626 "Parser.ml"
            ) = 
# 56 "Parser.mly"
                                            (Sequence (c1, c2))
# 630 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv190)) : 'freshtv192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv193 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 640 "Parser.ml"
            ))) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 644 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)) : 'freshtv196)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv203 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 653 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 657 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv199 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 667 "Parser.ml"
            ))) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 671 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv197 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 678 "Parser.ml"
            ))) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 682 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (c1 : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 687 "Parser.ml"
            ))), _, (c2 : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 691 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 696 "Parser.ml"
            ) = 
# 59 "Parser.mly"
                                           (Parallel (c1, c2))
# 700 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)) : 'freshtv200)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv201 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 710 "Parser.ml"
            ))) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 714 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)) : 'freshtv204)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv207 * _menhir_state) * (
# 15 "Parser.mly"
       (string)
# 723 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 727 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv205 * _menhir_state) * (
# 15 "Parser.mly"
       (string)
# 733 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 737 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (v : (
# 15 "Parser.mly"
       (string)
# 742 "Parser.ml"
        ))), _, (c : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 746 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 751 "Parser.ml"
        ) = 
# 50 "Parser.mly"
                                     (VarDecl (v, c))
# 755 "Parser.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv206)) : 'freshtv208)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv211 * _menhir_state) * (
# 15 "Parser.mly"
       (string)
# 763 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 767 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv209 * _menhir_state) * (
# 15 "Parser.mly"
       (string)
# 773 "Parser.ml"
        ))) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 777 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (v : (
# 15 "Parser.mly"
       (string)
# 782 "Parser.ml"
        ))), _, (c : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 786 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 791 "Parser.ml"
        ) = 
# 43 "Parser.mly"
                                  (Procedure (v, c))
# 795 "Parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)) : 'freshtv212)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv215 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (Abstractsyntax.bool_expression)
# 803 "Parser.ml"
        )) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 807 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv213 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (Abstractsyntax.bool_expression)
# 813 "Parser.ml"
        )) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 817 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (b1 : (
# 22 "Parser.mly"
      (Abstractsyntax.bool_expression)
# 822 "Parser.ml"
        ))), _, (c1 : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 826 "Parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 831 "Parser.ml"
        ) = 
# 57 "Parser.mly"
                              (While (b1, c1))
# 835 "Parser.ml"
         in
        _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv214)) : 'freshtv216)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 843 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv225 * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 853 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv223 * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 859 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (l : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 864 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 19 "Parser.mly"
      (Abstractsyntax.cmd)
# 869 "Parser.ml"
            ) = 
# 32 "Parser.mly"
                  ( l )
# 873 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv221) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 19 "Parser.mly"
      (Abstractsyntax.cmd)
# 881 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv219) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 19 "Parser.mly"
      (Abstractsyntax.cmd)
# 889 "Parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv217) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 19 "Parser.mly"
      (Abstractsyntax.cmd)
# 897 "Parser.ml"
            )) : (
# 19 "Parser.mly"
      (Abstractsyntax.cmd)
# 901 "Parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv218)) : 'freshtv220)) : 'freshtv222)) : 'freshtv224)) : 'freshtv226)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv227 * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 911 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)
    | _ ->
        _menhir_fail ()

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "Parser.mly"
       (string)
# 921 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce20 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "Parser.mly"
       (bool)
# 931 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 17 "Parser.mly"
       (bool)
# 941 "Parser.ml"
    )) : (
# 17 "Parser.mly"
       (bool)
# 945 "Parser.ml"
    )) = _v in
    ((let _v : (
# 22 "Parser.mly"
      (Abstractsyntax.bool_expression)
# 950 "Parser.ml"
    ) = 
# 46 "Parser.mly"
               (Bool b)
# 954 "Parser.ml"
     in
    _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 961 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 971 "Parser.ml"
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
      (Abstractsyntax.expression)
# 985 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv91 * _menhir_state) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 992 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 997 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1002 "Parser.ml"
            ) = 
# 36 "Parser.mly"
                           (e)
# 1006 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv92)) : 'freshtv94)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv95 * _menhir_state) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1016 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv103 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1025 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1029 "Parser.ml"
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
      (Abstractsyntax.expression)
# 1041 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1045 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1050 "Parser.ml"
            ))), _, (e2 : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1054 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1059 "Parser.ml"
            ) = 
# 38 "Parser.mly"
                            (Minus (e1, e2))
# 1063 "Parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv100)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv101 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1073 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1077 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)) : 'freshtv104)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1086 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1090 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) : 'freshtv106)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * _menhir_state * (
# 15 "Parser.mly"
       (string)
# 1098 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1102 "Parser.ml"
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
# 1116 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1120 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (v : (
# 15 "Parser.mly"
       (string)
# 1125 "Parser.ml"
            ))), _, (e : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1129 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 1134 "Parser.ml"
            ) = 
# 53 "Parser.mly"
                          (Assign (v, e))
# 1138 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv108)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv109 * _menhir_state * (
# 15 "Parser.mly"
       (string)
# 1148 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1152 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)) : 'freshtv112)
    | MenhirState1 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1161 "Parser.ml"
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
      (Abstractsyntax.expression)
# 1173 "Parser.ml"
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
      (Abstractsyntax.expression)
# 1199 "Parser.ml"
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
      (Abstractsyntax.expression)
# 1229 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)) : 'freshtv120)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1238 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1242 "Parser.ml"
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
      (Abstractsyntax.expression)
# 1256 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1260 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1265 "Parser.ml"
            ))), _, (e2 : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1269 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 22 "Parser.mly"
      (Abstractsyntax.bool_expression)
# 1274 "Parser.ml"
            ) = 
# 48 "Parser.mly"
                         (Expression (e1, LT, e2))
# 1278 "Parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv123 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1288 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1292 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)) : 'freshtv126)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1301 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1305 "Parser.ml"
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
      (Abstractsyntax.expression)
# 1319 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1323 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1328 "Parser.ml"
            ))), _, (e2 : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1332 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 22 "Parser.mly"
      (Abstractsyntax.bool_expression)
# 1337 "Parser.ml"
            ) = 
# 47 "Parser.mly"
                               (Expression (e1, EQ, e2))
# 1341 "Parser.ml"
             in
            _menhir_goto_boolean _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv129 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1351 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1355 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)) : 'freshtv132)
    | MenhirState0 | MenhirState60 | MenhirState5 | MenhirState8 | MenhirState55 | MenhirState52 | MenhirState27 | MenhirState49 | MenhirState35 | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1364 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv133 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1374 "Parser.ml"
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
      (Abstractsyntax.expression)
# 1400 "Parser.ml"
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
      (Abstractsyntax.expression)
# 1430 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)) : 'freshtv140)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv147 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1439 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1443 "Parser.ml"
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
      (Abstractsyntax.expression)
# 1457 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1461 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv141 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1468 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1472 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1477 "Parser.ml"
            ))), _, (e2 : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1481 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 1486 "Parser.ml"
            ) = 
# 51 "Parser.mly"
                                    (Call (e1, e2))
# 1490 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)) : 'freshtv144)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv145 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1500 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1504 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)) : 'freshtv148)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv153 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1513 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1517 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv149 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1527 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1531 "Parser.ml"
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
      (Abstractsyntax.expression)
# 1561 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1565 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)) : 'freshtv154)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv159 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1574 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1578 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1582 "Parser.ml"
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
      (Abstractsyntax.expression)
# 1596 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1600 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1604 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1609 "Parser.ml"
            ))), _, (e2 : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1613 "Parser.ml"
            ))), _, (e3 : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1617 "Parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 1622 "Parser.ml"
            ) = 
# 54 "Parser.mly"
                                         (FieldAssign (e1, e2, e3))
# 1626 "Parser.ml"
             in
            _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv157 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1636 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1640 "Parser.ml"
            ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1644 "Parser.ml"
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
      (Abstractsyntax.bool_expression)
# 1657 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 1666 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv53 * _menhir_state) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 1675 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv55 * _menhir_state) * _menhir_state * (
# 22 "Parser.mly"
      (Abstractsyntax.bool_expression)
# 1684 "Parser.ml"
        )) * _menhir_state * (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 1688 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv57 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1697 "Parser.ml"
        ))) * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1701 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1710 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1719 "Parser.ml"
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
      (Abstractsyntax.bool_expression)
# 1733 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1742 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1751 "Parser.ml"
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
      (Abstractsyntax.expression)
# 1770 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 1779 "Parser.ml"
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
# 1793 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state) * (
# 15 "Parser.mly"
       (string)
# 1802 "Parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state) * (
# 15 "Parser.mly"
       (string)
# 1811 "Parser.ml"
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
# 1862 "Parser.ml"
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
# 1873 "Parser.ml"
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
# 1915 "Parser.ml"
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
# 1930 "Parser.ml"
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
# 1942 "Parser.ml"
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
# 1972 "Parser.ml"
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
      (Abstractsyntax.cmd)
# 1986 "Parser.ml"
    ) = 
# 55 "Parser.mly"
           (Skip)
# 1990 "Parser.ml"
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
# 2006 "Parser.ml"
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
# 2017 "Parser.ml"
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
# 2059 "Parser.ml"
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
# 2074 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 16 "Parser.mly"
       (int)
# 2084 "Parser.ml"
    )) : (
# 16 "Parser.mly"
       (int)
# 2088 "Parser.ml"
    )) = _v in
    ((let _v : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 2093 "Parser.ml"
    ) = 
# 37 "Parser.mly"
            (One n)
# 2097 "Parser.ml"
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
      (Abstractsyntax.expression)
# 2110 "Parser.ml"
    ) = 
# 40 "Parser.mly"
           (Null)
# 2114 "Parser.ml"
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
# 2136 "Parser.ml"
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
# 2147 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv9 * _menhir_state)) * (
# 15 "Parser.mly"
       (string)
# 2154 "Parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), (v : (
# 15 "Parser.mly"
       (string)
# 2159 "Parser.ml"
                ))) = _menhir_stack in
                let _v : (
# 20 "Parser.mly"
      (Abstractsyntax.cmd)
# 2164 "Parser.ml"
                ) = 
# 52 "Parser.mly"
                                 (Malloc v)
# 2168 "Parser.ml"
                 in
                _menhir_goto_cmd _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)) : 'freshtv12)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv13 * _menhir_state)) * (
# 15 "Parser.mly"
       (string)
# 2178 "Parser.ml"
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
# 2285 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((f : (
# 15 "Parser.mly"
       (string)
# 2295 "Parser.ml"
    )) : (
# 15 "Parser.mly"
       (string)
# 2299 "Parser.ml"
    )) = _v in
    ((let _v : (
# 21 "Parser.mly"
      (Abstractsyntax.expression)
# 2304 "Parser.ml"
    ) = 
# 35 "Parser.mly"
              ( Field f )
# 2308 "Parser.ml"
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
      (Abstractsyntax.cmd)
# 2377 "Parser.ml"
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
  

# 2425 "Parser.ml"
