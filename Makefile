# Name of the main LaTeX file without the extension
MAIN = main

# Rule to compile the LaTeX document
all: build/$(MAIN).pdf

# Rule to compile the LaTeX document (biber support)
build/$(MAIN).pdf: $(MAIN).tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make --output-directory=build $(MAIN).tex

# Rule to clean the LaTeX document
clean:
	latexmk -CA
	rm -rf build/*
