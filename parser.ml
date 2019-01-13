exception Error

type token = 
  | TIMES
  | SET
  | PRINT
  | PLUS
  | MINUS
  | INT of (
# 5 "parser.mly"
       (int)
# 13 "parser.ml"
)
  | ID of (
# 6 "parser.mly"
       (string)
# 18 "parser.ml"
)
  | EQ
  | EOF
  | DIV
  | COLON

and _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  mutable _menhir_token: token;
  mutable _menhir_startp: Lexing.position;
  mutable _menhir_endp: Lexing.position;
  mutable _menhir_shifted: int
}

and _menhir_state = 
  | MenhirState20
  | MenhirState16
  | MenhirState14
  | MenhirState12
  | MenhirState10
  | MenhirState8
  | MenhirState3
  | MenhirState0


# 1 "parser.mly"
  
  open Ast

# 49 "parser.ml"
let _eRR =
  Error

let rec _menhir_goto_stmts : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stmts -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv119 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv117 * _menhir_state * 'tv_stmts) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * 'tv_stmts) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | PRINT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | SET ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv102)) : 'freshtv104)
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, s) = _menhir_stack in
        let _v : (
# 22 "parser.mly"
      (Ast.pro)
# 89 "parser.ml"
        ) = 
# 25 "parser.mly"
                  ( List.rev s )
# 93 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 22 "parser.mly"
      (Ast.pro)
# 101 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 22 "parser.mly"
      (Ast.pro)
# 109 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_1 : (
# 22 "parser.mly"
      (Ast.pro)
# 117 "parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv106)) : 'freshtv108)) : 'freshtv110)) : 'freshtv112)) : 'freshtv114)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)) : 'freshtv118)) : 'freshtv120)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stmt -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stmt) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (s2 : 'tv_stmt) = _v in
        ((let (_menhir_stack, _menhir_s, s1) = _menhir_stack in
        let _v : 'tv_stmts = 
# 30 "parser.mly"
                              (s2::s1)
# 149 "parser.ml"
         in
        _menhir_goto_stmts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv94)) : 'freshtv96)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stmt) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (s : 'tv_stmt) = _v in
        ((let _v : 'tv_stmts = 
# 29 "parser.mly"
            ([s])
# 164 "parser.ml"
         in
        _menhir_goto_stmts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv98)) : 'freshtv100)
    | _ ->
        _menhir_fail ()

and _menhir_run8 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv91 * _menhir_state * 'tv_expr) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv92)

and _menhir_run10 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv89 * _menhir_state * 'tv_expr) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv90)

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv87 * _menhir_state * 'tv_expr) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv88)

and _menhir_run12 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv85 * _menhir_state * 'tv_expr) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv86)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 243 "parser.ml"
        )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 251 "parser.ml"
        )) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | DIV ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | COLON | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv45 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 268 "parser.ml"
            )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), id), _, e) = _menhir_stack in
            let _v : 'tv_stmt = 
# 39 "parser.mly"
                            ( Set (id, e))
# 274 "parser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv46)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv47 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 284 "parser.ml"
            )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)) : 'freshtv50)) : 'freshtv52)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
        let _v : 'tv_expr = let o =
          
# 51 "parser.mly"
           (Mul)
# 298 "parser.ml"
          
        in
        
# 45 "parser.mly"
                           (Binop (o, e1, e2))
# 304 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv54)) : 'freshtv56)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | DIV ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | COLON | EOF | MINUS | PLUS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
            let _v : 'tv_expr = let o =
              
# 49 "parser.mly"
         (Add)
# 328 "parser.ml"
              
            in
            
# 45 "parser.mly"
                           (Binop (o, e1, e2))
# 334 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv58)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)) : 'freshtv62)) : 'freshtv64)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
        let _v : 'tv_expr = let o =
          
# 52 "parser.mly"
         (Div)
# 354 "parser.ml"
          
        in
        
# 45 "parser.mly"
                           (Binop (o, e1, e2))
# 360 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv66)) : 'freshtv68)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | DIV ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | COLON | EOF | MINUS | PLUS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
            let _v : 'tv_expr = let o =
              
# 50 "parser.mly"
           (Sub)
# 384 "parser.ml"
              
            in
            
# 45 "parser.mly"
                           (Binop (o, e1, e2))
# 390 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv70)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)) : 'freshtv76)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | DIV ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | COLON | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv77 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : 'tv_stmt = 
# 40 "parser.mly"
                    ( Print e)
# 424 "parser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv78)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv79 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)) : 'freshtv82)) : 'freshtv84)
    | _ ->
        _menhir_fail ()

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_typ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv43) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_typ) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (t : 'tv_typ) = _v in
    ((let _v : 'tv_expr = 
# 44 "parser.mly"
           (Typ t)
# 450 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv42)) : 'freshtv44)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "parser.mly"
       (int)
# 457 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 5 "parser.mly"
       (int)
# 467 "parser.ml"
    )) = _v in
    ((let _v : 'tv_typ = 
# 34 "parser.mly"
            (Int i)
# 472 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv40)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (string)
# 479 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (id : (
# 6 "parser.mly"
       (string)
# 489 "parser.ml"
    )) = _v in
    ((let _v : 'tv_typ = 
# 35 "parser.mly"
              (Var id)
# 494 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv38)

and _menhir_discard : _menhir_env -> token =
  fun _menhir_env ->
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = _menhir_env._menhir_lexer lexbuf in
    _menhir_env._menhir_token <- _tok;
    _menhir_env._menhir_startp <- lexbuf.Lexing.lex_start_p;
    _menhir_env._menhir_endp <- lexbuf.Lexing.lex_curr_p;
    let shifted = Pervasives.(+) _menhir_env._menhir_shifted 1 in
    if Pervasives.(>=) shifted 0 then
      _menhir_env._menhir_shifted <- shifted;
    _tok

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 548 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv36)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "parser.mly"
       (string)
# 571 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv13 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 579 "parser.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv9 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 588 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv7 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 595 "parser.ml"
            )) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | ID _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
            | INT _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv8)) : 'freshtv10)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv11 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 614 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)) : 'freshtv14)) : 'freshtv16)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)) : 'freshtv20)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv6)

and pro : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 22 "parser.mly"
      (Ast.pro)
# 646 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = lexer lexbuf in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_startp = lexbuf.Lexing.lex_start_p;
        _menhir_endp = lexbuf.Lexing.lex_curr_p;
        _menhir_shifted = max_int;
        }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = () in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | PRINT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SET ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2)) : 'freshtv4))



