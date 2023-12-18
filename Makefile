# Name of the main LaTeX file without the extension
MAIN = main

# Rule to compile the LaTeX document
all: $(MAIN).pdf

# Rule to compile the LaTeX document (biber support)
$(MAIN).pdf: *.tex *.bib
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf -use-make $(MAIN).tex
	rm -f *.aux *.bbl *.blg *.log *.out *.run.xml *.toc *.bcf *.fls *.fdb_latexmk

clean:
	rm $(MAIN).pdf $(MAIN).synctex.gz
