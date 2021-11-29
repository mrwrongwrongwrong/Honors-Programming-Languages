all: delete
	ls
	ocamlc -g -c str.cma Abstractsyntax.ml Prettyprint.ml Staticsemantics.ml Transitionalsemantics.ml
	ocamllex lexer.mll
	ls
	@echo "# Parser:"
	menhir --explain Parser.mly
	ls
	@echo "# Lexer & Parser:"
	ocamlc -g -c parser.mli lexer.ml parser.ml
	@echo "# mainfile"
	ocamlc -g -c TransitionalSemantics.ml
	ocamlc -g -o main str.cma AbstractSyntax.cmo Prettyprint.cmo StaticSemantics.cmo lexer.cmo parser.cmo TransitionalSemantics.cmo 
	
delete:
	/bin/rm -f lexer.ml parser.ml *.cmo *.cmi


#	@echo "# mainfile"\
	ocamlc -g -c main.ml \
	@echo "Compile everything: Lexer, parser, AbstractSyntax, Prettyprint, StaticSemantics, TransitionalSemantics:" \
	ocamlc -g -o main str.cma AbstractSyntax.cmo TransitionalSemantics.cmo Prettyprint.cmo StaticSemantics.cmo lexer.cmo parser.cmo main.cmo \

#delete:\
	/bin/rm -f lexer.ml parser.ml *.cmo *.cmi \
	/bin/rm -f main main.cmi main.cmo lexer.cmi lexer.cmo lexer.ml parser.cmi parser.cmo parser.ml parser.mli parser.conflicts\
	/bin/rm -f AbstractSyntax.cmo Prettyprint.cmo TransitionalSemantics.cmo StaticSemantics.cmo *.cmi \