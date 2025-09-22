
## naming WITHOUT the extensions [.tex] or [.bib]
LATEXFILE=carnetPJchateauFalkenStein

## the local software...
CCLUAXE=xelatex
CCLUALA=lualatex
CCPDFLA=pdflatex
CCLATEX=latex
CCBIBTE=bibtex
CCPDFTE=dvipdf
CCPSTEX=dvips

all : xelatex
## NOTE : xelatex for fontspec / JeuxCartes !!

clean : $(LATEXFILE).log mrproper
	rm $(LATEXFILE).log

mrproper : $(LATEXFILE).aux
	rm $(LATEXFILE).aux

pdflatex : $(LATEXFILE).tex
	$(CCPDFLA) $(LATEXFILE).tex
	$(CCPDFLA) $(LATEXFILE).tex
	$(CCPDFLA) $(LATEXFILE).tex

lualatex : $(LATEXFILE).tex
	$(CCLUALA) $(LATEXFILE).tex
	$(CCLUALA) $(LATEXFILE).tex
	$(CCLUALA) $(LATEXFILE).tex
	
xelatex : $(LATEXFILE).tex
	$(CCLUAXE) $(LATEXFILE).tex
	$(CCLUAXE) $(LATEXFILE).tex
	$(CCLUAXE) $(LATEXFILE).tex
