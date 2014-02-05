################################################################################
# Makefile
################################################################################

report_NAME	= extraction_de_termes_cles_en_domaines_de_specialite
bib_FILE		= ../biblio.bib
input_DIR 	= ./input
needed_FILES	= $(wildcard $(input_DIR)/*.tex) $(bib_FILE)

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
	rm -rf *.aux *.bbl *.blg *.log *.out *.toc

mrproper: clean
	rm -rf $(report_NAME).dvi $(report_NAME).ps $(report_NAME).pdf

