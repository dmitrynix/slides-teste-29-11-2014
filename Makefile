OUTPUT = fundamentos-resumo
COMMAND= pdflatex -shell-escape -interaction=nonstopmode index.tex

all:
	sed '/url =/s/url =/howpublished ={\\url/g; /howpublished =/s/},/}},/g;/note/g' ExportedItems.bib > Items.bib
	$(COMMAND)
	bibtex index
	$(COMMAND)
	$(COMMAND)
	make clean

clean:
	rm -rf *.aux *.bbl *.toc *.out *.log *.nls *.nlo *.lof *.lot *.blg *.ilg *.nav *.snm

talk:
	rm index.pdf
	make 1>/dev/null 2>/dev/null
	evince --page-index 1 --presentation index.pdf 2>/dev/null
