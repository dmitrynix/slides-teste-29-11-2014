OUTPUT = fundamentos-resumo
COMMAND= pdflatex -shell-escape -interaction=nonstopmode index.tex

all:
	sed '/url =/s/url =/howpublished ={\\url/g; /howpublished =/s/},/}},/g;/note/d' ExportedItems.bib > Items.bib
	$(COMMAND)
	bibtex index
	$(COMMAND)
	$(COMMAND)
	make clean

clean:
	rm -rf *.aux *.bbl *.toc *.out *.log *.nls *.nlo *.lof *.lot *.blg *.ilg *.nav *.snm

preview:
	$(COMMAND)
	evince --page-index 1 --presentation index.pdf 2>/dev/null

talk:
	rm -f index.pdf
	make 1>/dev/null 2>/dev/null
	evince --page-index 1 --presentation index.pdf 2>/dev/null
