MAIN=rpn

all: rpn

$(MAIN):
	ocamlbuild -use-menhir $(MAIN).native

test:
	./$(MAIN).native tests/1.exp
	./$(MAIN).native tests/2.exp

clean:
	ocamlbuild -clean
