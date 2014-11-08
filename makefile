pdf : intro_commandes.tex intro_commandes.toc
	pdflatex intro_commandes.tex
	make clean

intro_commandes.toc : intro_commandes.tex
	pdflatex intro_commandes.tex
	latex_count=8 ; \
	while egrep -s 'Rerun (LaTeX|to get cross-references right)' intro_commandes.log && [ $$latex_count -gt 0 ] ;\
		do \
			echo "Rerunning latex...." ;\
			pdflatex intro_commandes.tex ;\
			latex_count=`expr $$latex_count - 1` ;\
		done

clean :
	rm intro_commandes.toc intro_commandes.aux intro_commandes.out intro_commandes.log
