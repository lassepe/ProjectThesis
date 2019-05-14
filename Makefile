all: Thesis.pdf

Thesis.pdf: $(shell find . -name "*.tex") lit/thesis.bib
	latexmk -pdf Thesis.tex

clean:
	latexmk -CA

.PHONY: all clean
