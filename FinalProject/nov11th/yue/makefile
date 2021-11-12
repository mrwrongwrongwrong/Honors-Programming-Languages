all: delete
	ls
	ocamlc -g -c str.cma abstractSynax.ml
	@echo "# Lexer specification:"
	ocamllex lexer.mll
	ls
	@echo "# Parser specification:"
	menhir --explain parser.mly

delete:
	-/bin/rm -f lexer.ml parser.ml *.cmo *.cmi