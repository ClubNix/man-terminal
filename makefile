pdf : intro\ commandes.tex intro\ commandes.toc
	pdflatex intro\ commandes.tex
	make clean

intro\ commandes.toc : intro\ commandes.tex
	pdflatex intro\ commandes.tex

clean :
	rm intro\ commandes.toc intro\ commandes.aux intro\ commandes.out intro\ commandes.log
