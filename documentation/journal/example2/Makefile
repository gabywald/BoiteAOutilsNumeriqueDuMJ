
## naming WITHOUT the extensions [.tex] or [.bib]
LATEXFILE=modele_journal2
BIBTEFILE=modele_journal2

## the local software...
CCLUAXE=xelatex
CCLUALA=lualatex
CCPDFLA=pdflatex
CCLATEX=latex
CCBIBTE=bibtex
CCPDFTE=dvipdf
CCPSTEX=dvips

all : xelatex

pdf : $(LATEXFILE).dvi
	$(CCPDFTE) $(LATEXFILE).dvi

ps : $(LATEXFILE).dvi
	$(CCPSTEX) $(LATEXFILE).dvi

clean : $(LATEXFILE).log mrproper
	rm $(LATEXFILE).log
	rm $(LATEXFILE).lot
	rm $(LATEXFILE).lof
	# rm $(LATEXFILE).dvi
	# rm $(LATEXFILE).pdf

mrproper : $(LATEXFILE).aux $(LATEXFILE).bbl $(LATEXFILE).blg $(LATEXFILE).toc
	rm $(LATEXFILE).aux
	rm $(LATEXFILE).bbl
	rm $(LATEXFILE).blg
	rm $(LATEXFILE).toc

$(LATEXFILE).dvi : $(LATEXFILE).tex $(BIBTEFILE).bib
	$(CCLATEX) $(LATEXFILE).tex
	$(CCBIBTE) $(LATEXFILE)
	$(CCLATEX) $(LATEXFILE).tex
	$(CCLATEX) $(LATEXFILE).tex
	$(CCLATEX) $(LATEXFILE).tex

pdflatex : $(LATEXFILE).tex $(BIBTEFILE).bib
	$(CCPDFLA) $(LATEXFILE).tex
	$(CCBIBTE) $(BIBTEFILE)
	$(CCPDFLA) $(LATEXFILE).tex
	$(CCPDFLA) $(LATEXFILE).tex
	$(CCPDFLA) $(LATEXFILE).tex

lualatex : $(LATEXFILE).tex $(BIBTEFILE).bib
	$(CCLUALA) $(LATEXFILE).tex
	$(CCBIBTE) $(BIBTEFILE)
	$(CCLUALA) $(LATEXFILE).tex
	$(CCLUALA) $(LATEXFILE).tex
	$(CCLUALA) $(LATEXFILE).tex
	
xelatex : $(LATEXFILE).tex $(BIBTEFILE).bib
	$(CCLUAXE) $(LATEXFILE).tex
	$(CCBIBTE) $(BIBTEFILE)
	$(CCLUAXE) $(LATEXFILE).tex
	$(CCLUAXE) $(LATEXFILE).tex
	$(CCLUAXE) $(LATEXFILE).tex
