all: delete
	ls
	ocamlc -g -c str.cma Abstractsyntax.ml 
	ocamllex lexer.mll
	ls
	@echo "# Parser specification:"
	menhir --explain Parser.mly
	ls
	@echo "# PrettyPrint specification:"
	ocamlc -g -c prettyprint.ml
delete:
	-/bin/rm -f lexer.ml parser.ml *.cmo *.cmi