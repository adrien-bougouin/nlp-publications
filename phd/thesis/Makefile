################################################################################
# Makefile
################################################################################

report_NAME	= thesis
bib_FILE		= ../../biblio.bib
input_DIR 	= ./input
needed_FILES	= $(wildcard $(input_DIR)/*.tex) $(bib_FILE)

default: $(report_NAME).pdf

$(report_NAME).pdf: $(report_NAME).tex $(needed_FILES)
	latex $<
	bibtex $(report_NAME)
	latex $<
	latex $<
	dvips $(report_NAME).dvi
	ps2pdf $(report_NAME).ps

################################################################################

.PHONY: clean mrproper

clean:
	rm -rf *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot *.brf *.dvi *.ps

mrproper: clean
	rm -rf $(report_NAME).pdf

