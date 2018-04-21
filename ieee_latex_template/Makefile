filelist := $(shell ls | grep tex)
default:
	$(foreach filename,$(filelist),pdflatex $(filename);bibtex $(filename);\
	pdflatex $(filename);)
	
	rm *.log *.aux *.bbl *.blg *.dvi
clean:
	rm *.pdf *.log *.aux *.bbl *.blg *.dvi

