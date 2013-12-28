pdf : intro_commandes.tex intro_commandes.toc
	pdflatex intro_commandes.tex
	make clean

intro_commandes.toc : intro_commandes.tex
	pdflatex intro_commandes.tex

clean :
	rm intro_commandes.toc intro_commandes.aux intro_commandes.out intro_commandes.log
