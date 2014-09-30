################################################################################
# Makefile
################################################################################

report_NAME	= nii
input_DIR 	= ./input
bib_FILE		= ../../biblio.bib
input_FILES	= $(report_NAME).tex $(wildcard $(input_DIR)/*.tex) $(bib_File)

default: $(report_NAME).pdf

$(report_NAME).pdf: $(input_FILES)
	latex $(report_NAME).tex
	bibtex $(report_NAME)
	latex $(report_NAME).tex
	latex $(report_NAME).tex
	dvips $(report_NAME).dvi
	ps2pdf $(report_NAME).ps

################################################################################

.PHONY: clean mrproper

clean:
	rm -rf *.aux *.ind *.log *.out *.bbl *.blg *.ilg *.lof *.toc *.idx *.lot *.loa *.snm *.nav

mrproper: clean
	rm -rf $(report_NAME).dvi $(report_NAME).ps $(report_NAME).pdf

