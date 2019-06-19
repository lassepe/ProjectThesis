MAIN=Thesis
BIB=lit/thesis.bib

all: $(MAIN).pdf

$(MAIN).pdf: $(shell find . -name "*.tex") $(BIB)
	# fetch plots:
	cp ~/worktree/pomdp_research/AA228FinalProject/results/final_results/plots/*.pdf ./Figures/roomba_plots/;\
	latexmk -pdf Thesis.tex

show:
	zathura $(MAIN).pdf &

clean:
	latexmk -CA
	trash-put ./Figures/roomba_plots/*.pdf

.PHONY: all clean
