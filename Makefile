all:	pdf
pdf:
	pdflatex main.tex
	pdflatex main.tex

website: 
	rm -rf main/
	latex2html -split +0 -info "" -nofootnode -no_navigation -ascii_mode main.tex
	sed -i 's/<HR>//g' main/main.html
	sed -i 's/<BIG CLASS="XXLARGE">/<SPAN>/g' main/main.html
	sed -i 's/<\BIG>/<\SPAN>/g' main/main.html


clean:
	rm -rf main/
	rm -f *.log *.pdf *.out *.aux *.bbl  *.blg
