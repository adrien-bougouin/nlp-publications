################################################################################
# Makefile
################################################################################

poster_NAME	= jdoc_2014
bib_FILE		= ../../biblio.bib
include_DIR 	= ./include
needed_FILES	= $(wildcard $(include_DIR)/*) $(bib_FILE)

default: $(poster_NAME).pdf

$(poster_NAME).pdf: $(poster_NAME).tex $(needed_FILES)
	latex $(poster_NAME)
	bibtex $(poster_NAME)
	latex $(poster_NAME)
	latex $(poster_NAME)
	dvips $(poster_NAME).dvi
	ps2pdf $(poster_NAME).ps

################################################################################

.PHONY: clean mrproper

clean:
	rm -rf *.aux *.bbl *.blg *.log *.out *.toc *.ps *.dvi *.bcf *.nav *.snm

mrproper: clean
	rm -rf $(poster_NAME).pdf

