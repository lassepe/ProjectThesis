MAIN=Thesis
BIB=lit/thesis.bib

all: $(MAIN).pdf

$(MAIN).pdf: $(shell find . -name "*.tex") $(BIB)
	latexmk -pdf Thesis.tex

show:
	zathura $(MAIN).pdf &

clean:
	latexmk -CA

.PHONY: all clean
