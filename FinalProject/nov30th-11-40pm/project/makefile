all: delete
	ls
	ocamlc -c abstractsyntax.ml
	ocamlc -c prettyprint.ml 
#	ocamlc -g -c str.cma Abstractsyntax.ml Prettyprint.ml Staticsemantics.ml Transitionalsemantics.ml
	ocamllex lexer.mll
	ls
	@echo "# Parser:"
	menhir --explain parser.mly
	ls
	@echo "# Lexer & Parser:"
	ocamlc -c parser.mli 
	ocamlc -c lexer.ml 
	ocamlc -c parser.ml

	ocamlc -c staticsemantics.ml
	ocamlc -c transitionalsemantics.ml

	@echo "# mainfile"
	ocamlc -c main.ml

	@echo "# :"
	@echo "# linking of the lexer, parser & everything else:"
	ocamlc -o main abstractsyntax.cmo parser.cmo lexer.cmo prettyprint.cmo staticsemantics.cmo transitionalsemantics.cmo main.cmo
delete:
	/bin/rm -f lexer.ml parser.ml *.cmo *.cmi
	/bin/rm -f main main.cmi main.cmo lexer.cmi lexer.cmo parser.cmi parser.cmo parser.mli parser.conflicts
	/bin/rm -f abstractsyntax.cmi abstractsyntax.cmo transitionalsemantics.cmi transitionalsemantics.cmo prettyprint.cmi prettyprint.cmo staticsemantics.cmi staticsemantics.cmo makefile~
