exception Error

type token = 
  | TO
  | TIMES
  | SET
  | PRINT
  | PLUS
  | MINUS
  | INT of (
# 5 "parser.mly"
       (int)
# 14 "parser.ml"
)
  | ID of (
# 6 "parser.mly"
       (string)
# 19 "parser.ml"
)
  | EOF
  | DIV
  | COMMA
  | CHANGE
  | AS

and _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  mutable _menhir_token: token;
  mutable _menhir_startp: Lexing.position;
  mutable _menhir_endp: Lexing.position;
  mutable _menhir_shifted: int
}

and _menhir_state = 
<<<<<<< HEAD
  | MenhirState24
  | MenhirState20
=======
  | MenhirState21
>>>>>>> master
  | MenhirState16
  | MenhirState14
  | MenhirState12
  | MenhirState10
  | MenhirState8
  | MenhirState3
  | MenhirState0


# 1 "parser.mly"
  
  open Ast

# 52 "parser.ml"
let _eRR =
  Error

let rec _menhir_goto_stmts : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stmts -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv143 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv141 * _menhir_state * 'tv_stmts) = _menhir_stack in
=======
    let (_menhir_stack : 'freshtv121 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv119 * _menhir_state * 'tv_stmts) = _menhir_stack in
>>>>>>> master
    let (_tok : token) = _tok in
    ((match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv127 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * 'tv_stmts) = _menhir_stack in
=======
        let (_menhir_stack : 'freshtv111 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state * 'tv_stmts) = _menhir_stack in
>>>>>>> master
        let (_tok : token) = _tok in
        ((match _tok with
        | CHANGE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | PRINT ->
<<<<<<< HEAD
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | SET ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv126)) : 'freshtv128)
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
=======
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | SET ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv110)) : 'freshtv112)
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
>>>>>>> master
        ((let (_menhir_stack, _menhir_s, s) = _menhir_stack in
        let _v : (
# 22 "parser.mly"
      (Ast.pro)
# 94 "parser.ml"
        ) = 
# 25 "parser.mly"
                  ( List.rev s )
# 98 "parser.ml"
         in
<<<<<<< HEAD
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 22 "parser.mly"
      (Ast.pro)
# 106 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 22 "parser.mly"
      (Ast.pro)
# 114 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_1 : (
# 22 "parser.mly"
      (Ast.pro)
# 122 "parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv130)) : 'freshtv132)) : 'freshtv134)) : 'freshtv136)) : 'freshtv138)
=======
        _menhir_goto_pro _menhir_env _menhir_stack _menhir_s _v) : 'freshtv114)) : 'freshtv116)
>>>>>>> master
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv139 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)) : 'freshtv142)) : 'freshtv144)
=======
        let (_menhir_stack : 'freshtv117 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)) : 'freshtv120)) : 'freshtv122)
>>>>>>> master

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stmt -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
<<<<<<< HEAD
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stmt) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
=======
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stmt) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
>>>>>>> master
        let (_ : _menhir_state) = _menhir_s in
        let (s2 : 'tv_stmt) = _v in
        ((let (_menhir_stack, _menhir_s, s1) = _menhir_stack in
        let _v : 'tv_stmts = 
# 31 "parser.mly"
                              (s2::s1)
<<<<<<< HEAD
# 154 "parser.ml"
         in
        _menhir_goto_stmts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv118)) : 'freshtv120)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stmt) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121) = Obj.magic _menhir_stack in
=======
# 125 "parser.ml"
         in
        _menhir_goto_stmts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv102)) : 'freshtv104)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stmt) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105) = Obj.magic _menhir_stack in
>>>>>>> master
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (s : 'tv_stmt) = _v in
        ((let _v : 'tv_stmts = 
# 30 "parser.mly"
            ([s])
<<<<<<< HEAD
# 169 "parser.ml"
         in
        _menhir_goto_stmts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)) : 'freshtv124)
=======
# 140 "parser.ml"
         in
        _menhir_goto_stmts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv106)) : 'freshtv108)
>>>>>>> master
    | _ ->
        _menhir_fail ()

and _menhir_run8 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv115 * _menhir_state * 'tv_expr) = _menhir_stack in
=======
    let (_menhir_stack : 'freshtv99 * _menhir_state * 'tv_expr) = _menhir_stack in
>>>>>>> master
    let (_tok : token) = _tok in
    ((match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
<<<<<<< HEAD
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv116)
=======
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv100)
>>>>>>> master

and _menhir_run10 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv113 * _menhir_state * 'tv_expr) = _menhir_stack in
=======
    let (_menhir_stack : 'freshtv97 * _menhir_state * 'tv_expr) = _menhir_stack in
>>>>>>> master
    let (_tok : token) = _tok in
    ((match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
<<<<<<< HEAD
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv114)
=======
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv98)
>>>>>>> master

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv111 * _menhir_state * 'tv_expr) = _menhir_stack in
=======
    let (_menhir_stack : 'freshtv95 * _menhir_state * 'tv_expr) = _menhir_stack in
>>>>>>> master
    let (_tok : token) = _tok in
    ((match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
<<<<<<< HEAD
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv112)
=======
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv96)
>>>>>>> master

and _menhir_run12 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv109 * _menhir_state * 'tv_expr) = _menhir_stack in
=======
    let (_menhir_stack : 'freshtv93 * _menhir_state * 'tv_expr) = _menhir_stack in
>>>>>>> master
    let (_tok : token) = _tok in
    ((match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
<<<<<<< HEAD
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv110)
=======
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv94)
>>>>>>> master

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : (('freshtv67 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 248 "parser.ml"
=======
        let (_menhir_stack : (('freshtv59 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 219 "parser.ml"
>>>>>>> master
        )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : (('freshtv65 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 256 "parser.ml"
=======
        let (_menhir_stack : (('freshtv57 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 227 "parser.ml"
>>>>>>> master
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
        | COMMA | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (('freshtv61 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 273 "parser.ml"
=======
            let (_menhir_stack : (('freshtv53 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 244 "parser.ml"
>>>>>>> master
            )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), id), _, e) = _menhir_stack in
            let _v : 'tv_stmt = 
# 40 "parser.mly"
                            ( Set (id, e))
<<<<<<< HEAD
# 279 "parser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv62)
=======
# 250 "parser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv54)
>>>>>>> master
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (('freshtv63 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 289 "parser.ml"
            )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)) : 'freshtv66)) : 'freshtv68)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : (('freshtv55 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 260 "parser.ml"
            )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)) : 'freshtv58)) : 'freshtv60)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
>>>>>>> master
        ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
        let _v : 'tv_expr = let o =
          
# 52 "parser.mly"
           (Mul)
<<<<<<< HEAD
# 303 "parser.ml"
=======
# 274 "parser.ml"
>>>>>>> master
          
        in
        
# 46 "parser.mly"
                           (Binop (o, e1, e2))
<<<<<<< HEAD
# 309 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv70)) : 'freshtv72)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = _menhir_stack in
=======
# 280 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv62)) : 'freshtv64)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = _menhir_stack in
>>>>>>> master
        let (_tok : token) = _tok in
        ((match _tok with
        | DIV ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | MINUS | PLUS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
>>>>>>> master
            ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
            let _v : 'tv_expr = let o =
              
# 50 "parser.mly"
         (Add)
<<<<<<< HEAD
# 333 "parser.ml"
=======
# 304 "parser.ml"
>>>>>>> master
              
            in
            
# 46 "parser.mly"
                           (Binop (o, e1, e2))
<<<<<<< HEAD
# 339 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv74)
=======
# 310 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv66)
>>>>>>> master
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)) : 'freshtv78)) : 'freshtv80)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)) : 'freshtv70)) : 'freshtv72)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
>>>>>>> master
        ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
        let _v : 'tv_expr = let o =
          
# 53 "parser.mly"
         (Div)
<<<<<<< HEAD
# 359 "parser.ml"
=======
# 330 "parser.ml"
>>>>>>> master
          
        in
        
# 46 "parser.mly"
                           (Binop (o, e1, e2))
<<<<<<< HEAD
# 365 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv82)) : 'freshtv84)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = _menhir_stack in
=======
# 336 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv74)) : 'freshtv76)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = _menhir_stack in
>>>>>>> master
        let (_tok : token) = _tok in
        ((match _tok with
        | DIV ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | MINUS | PLUS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
>>>>>>> master
            ((let ((_menhir_stack, _menhir_s, e1), _, e2) = _menhir_stack in
            let _v : 'tv_expr = let o =
              
# 51 "parser.mly"
           (Sub)
<<<<<<< HEAD
# 389 "parser.ml"
=======
# 360 "parser.ml"
>>>>>>> master
              
            in
            
# 46 "parser.mly"
                           (Binop (o, e1, e2))
<<<<<<< HEAD
# 395 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv86)
=======
# 366 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv78)
>>>>>>> master
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)) : 'freshtv90)) : 'freshtv92)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state) * _menhir_state * 'tv_expr) = _menhir_stack in
=======
            let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)) : 'freshtv82)) : 'freshtv84)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state) * _menhir_state * 'tv_expr) = _menhir_stack in
>>>>>>> master
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
        | COMMA | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv93 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : ('freshtv85 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
>>>>>>> master
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : 'tv_stmt = 
# 41 "parser.mly"
                    ( Print e)
<<<<<<< HEAD
# 429 "parser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv94)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv95 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)) : 'freshtv100)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv107 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 444 "parser.ml"
        )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 452 "parser.ml"
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
        | COMMA | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv101 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 469 "parser.ml"
            )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), id), _, e) = _menhir_stack in
            let _v : 'tv_stmt = 
# 40 "parser.mly"
                                ( Change(id, e))
# 475 "parser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv102)
=======
# 400 "parser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv86)
>>>>>>> master
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (('freshtv103 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 485 "parser.ml"
            )) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)) : 'freshtv106)) : 'freshtv108)
=======
            let (_menhir_stack : ('freshtv87 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)) : 'freshtv90)) : 'freshtv92)
>>>>>>> master
    | _ ->
        _menhir_fail ()

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_typ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv59) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_typ) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv57) = Obj.magic _menhir_stack in
=======
    let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_typ) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv49) = Obj.magic _menhir_stack in
>>>>>>> master
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (t : 'tv_typ) = _v in
    ((let _v : 'tv_expr = 
# 45 "parser.mly"
           (Typ t)
<<<<<<< HEAD
# 505 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv58)) : 'freshtv60)
=======
# 426 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv50)) : 'freshtv52)
>>>>>>> master

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "parser.mly"
       (int)
<<<<<<< HEAD
# 512 "parser.ml"
=======
# 433 "parser.ml"
>>>>>>> master
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv55) = Obj.magic _menhir_stack in
=======
    let (_menhir_stack : 'freshtv47) = Obj.magic _menhir_stack in
>>>>>>> master
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 5 "parser.mly"
       (int)
<<<<<<< HEAD
# 522 "parser.ml"
=======
# 443 "parser.ml"
>>>>>>> master
    )) = _v in
    ((let _v : 'tv_typ = 
# 35 "parser.mly"
            (Int i)
<<<<<<< HEAD
# 527 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv56)
=======
# 448 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv48)
>>>>>>> master

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (string)
<<<<<<< HEAD
# 534 "parser.ml"
=======
# 455 "parser.ml"
>>>>>>> master
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv53) = Obj.magic _menhir_stack in
=======
    let (_menhir_stack : 'freshtv45) = Obj.magic _menhir_stack in
>>>>>>> master
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (id : (
# 6 "parser.mly"
       (string)
<<<<<<< HEAD
# 544 "parser.ml"
=======
# 465 "parser.ml"
>>>>>>> master
    )) = _v in
    ((let _v : 'tv_typ = 
# 36 "parser.mly"
              (Var id)
<<<<<<< HEAD
# 549 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv54)
=======
# 470 "parser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv46)
>>>>>>> master

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
<<<<<<< HEAD
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 578 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 612 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv52)
=======
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 524 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv44)
>>>>>>> master

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv33 * _menhir_state) = _menhir_stack in
=======
    let (_menhir_stack : 'freshtv27 * _menhir_state) = _menhir_stack in
>>>>>>> master
    let (_tok : token) = _tok in
    ((match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv29 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "parser.mly"
       (string)
# 635 "parser.ml"
=======
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "parser.mly"
       (string)
# 547 "parser.ml"
>>>>>>> master
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : ('freshtv27 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 643 "parser.ml"
=======
        let (_menhir_stack : ('freshtv21 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 555 "parser.ml"
>>>>>>> master
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv23 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 652 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv21 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 659 "parser.ml"
=======
            let (_menhir_stack : ('freshtv17 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 564 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv15 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 571 "parser.ml"
>>>>>>> master
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
<<<<<<< HEAD
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv22)) : 'freshtv24)
=======
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv16)) : 'freshtv18)
>>>>>>> master
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv25 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 678 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)) : 'freshtv28)) : 'freshtv30)
=======
            let (_menhir_stack : ('freshtv19 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 590 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)) : 'freshtv22)) : 'freshtv24)
>>>>>>> master
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)) : 'freshtv34)
=======
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)) : 'freshtv28)
>>>>>>> master

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv19 * _menhir_state) = _menhir_stack in
=======
    let (_menhir_stack : 'freshtv13 * _menhir_state) = _menhir_stack in
>>>>>>> master
    let (_tok : token) = _tok in
    ((match _tok with
    | ID _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | INT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
<<<<<<< HEAD
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv20)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "parser.mly"
       (string)
# 721 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv11 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 729 "parser.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv7 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 738 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv5 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 745 "parser.ml"
            )) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | ID _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
            | INT _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv6)) : 'freshtv8)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv9 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 764 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)) : 'freshtv12)) : 'freshtv14)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)) : 'freshtv18)
=======
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv14)

and _menhir_goto_pro : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
      (Ast.pro)
# 622 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 22 "parser.mly"
      (Ast.pro)
# 631 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 22 "parser.mly"
      (Ast.pro)
# 639 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv10)) : 'freshtv12)
>>>>>>> master

and pro : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 22 "parser.mly"
      (Ast.pro)
# 779 "parser.ml"
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
    let (_menhir_stack : 'freshtv7) = () in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
<<<<<<< HEAD
    | CHANGE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState0
=======
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        ((let _v : (
# 22 "parser.mly"
      (Ast.pro)
# 680 "parser.ml"
        ) = 
# 26 "parser.mly"
          ( [] )
# 684 "parser.ml"
         in
        _menhir_goto_pro _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2)) : 'freshtv4)
>>>>>>> master
    | PRINT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SET ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv6)) : 'freshtv8))



