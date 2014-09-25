OUTPUT = fundamentos-resumo

all:
	sed '/url =/s/url =/howpublished ={\\url/g; /howpublished =/s/},/}},/g;/note/g' ExportedItems.bib > Items.bib
	pdflatex -shell-escape index.tex
	bibtex index
	pdflatex -shell-escape index.tex
	pdflatex -shell-escape index.tex
	#mv index.pdf ${HOME}/Documents/Latex/$(OUTPUT).pdf
	make clean

clean:
	rm -rf *.aux *.bbl *.toc *.out *.log *.nls *.nlo *.lof *.lot *.blg *.ilg *.nav *.snm

show:
	make
	evince --page-index 1 --presentation index.pdf
