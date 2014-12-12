################################################################################
# Makefile
################################################################################

report_NAME	= naaclhlt2015
bib_FILE		= ../../biblio.bib
input_DIR 	= ./input
include_DIR 	= ./include
needed_FILES	= $(wildcard $(input_DIR)/*.tex) $(wildcard $(include_DIR)/*) $(bib_FILE)

default: $(report_NAME).pdf

$(report_NAME).pdf: $(report_NAME).tex $(needed_FILES)
	latex $(report_NAME)
	bibtex $(report_NAME)
	latex $(report_NAME)
	latex $(report_NAME)
	dvips $(report_NAME).dvi
	ps2pdf $(report_NAME).ps

################################################################################

.PHONY: clean mrproper

clean:
	rm -rf *.aux *.bbl *.blg *.log *.out *.toc *.ps *.dvi

mrproper: clean
	rm -rf $(report_NAME).pdf

