all:	pdf
pdf:
	pdflatex main.tex
	pdflatex main.tex
	pdflatex main.tex
	pdflatex main.tex

website: 
	rm -rf main/
	latex2html -split +0 -info "" -nofootnode -no_navigation -ascii_mode main.tex
	python post_process.py
	
	cat append.css >> main/main.css

clean:
	rm -rf main/
	rm -f *.log *.pdf *.out *.aux *.bbl  *.blg


copy:
	cp main.pdf /var/www/html/docs/CV_AjayBrahmakshatriya.pdf
	cp main/main.html /var/www/html/cv/
	cp main/main.css /var/www/html/cv
