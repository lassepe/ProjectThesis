all: Thesis.pdf

Thesis.pdf: $(shell find . -name "*.tex") lit/thesis.bib
	latexmk -pdf -jobname=build/Thesis Thesis.tex

clean:
	latexmk -CA
	rm -f build/*

.PHONY: all clean
