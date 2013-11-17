################################################################################
# Makefile
################################################################################

report_NAME	= tal_2014_55_1
bib_FILE		= ../biblio.bib
input_DIR 	= ./input
image_DIR 	= ./image
needed_FILES	= $(wildcard $(input_DIR)/*.tex) $(wildcard $(image_DIR)/*) $(bib_FILE)

default: $(report_NAME).pdf

#	latex $(report_NAME)
#	bibtex $(report_NAME)
$(report_NAME).pdf: $(report_NAME).tex $(needed_FILES)
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

