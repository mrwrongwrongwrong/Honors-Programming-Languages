all: delete
	ls
	ocamlc -g -c str.cma Abstractsyntax.ml Prettyprint.ml Staticsemantics.ml Transactionalsemantics.ml
	ocamllex lexer.mll
	ls
	@echo "# Parser:"
	menhir --explain Parser.mly
	ls
	@echo "# Lexer & Parser:"
	ocamlc -g -c parser.mli lexer.ml parser.ml
	@echo "# mainfile"
	ocamlc -g -c main.ml 
	@echo "Compile everything: Lexer, parser, AbstractSyntax, Prettyprint, StaticSemantics, TransactionalSemantics:"
	ocamlc -g -o main str.cma AbstractSyntax.cmo TransactionalSemantics.cmo Prettyprint.cmo StaticSemantics.cmo lexer.cmo parser.cmo main.cmo
delete:
	/bin/rm -f lexer.ml parser.ml *.cmo *.cmi
	/bin/rm -f main main.cmi main.cmo lexer.cmi lexer.cmo lexer.ml parser.cmi parser.cmo parser.ml parser.mli parser.conflicts
	/bin/rm -f AbstractSyntax.cmo Prettyprint.cmo TransactionalSemantics.cmo StaticSemantics.cmo *.cmi