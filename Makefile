MAIN=Thesis
BIB=lit/thesis.bib

all: fetch_roomba_plots $(MAIN).pdf

install:
	git submodule init;\
	git submodule update


$(MAIN).pdf: $(shell find . -name "*.tex") $(BIB)
	# fetch plots:
	latexmk -pdf Thesis.tex

fetch_roomba_plots:
	cp code/RoombaPOMDPs.jl/results/final_results/plots/*.pdf ./Figures/roomba_plots/

roomba_plots:
	cd ./code/RoombaPOMDPs.jl;\
	julia --project -e 'using Pkg; Pkg.instantiate(); include("scripts/generate_plots.jl"); create_eval_plot();'\
	cd -

from_scratch: install roomba_plots all

show:
	zathura $(MAIN).pdf &

clean:
	latexmk -CA
	trash-put ./Figures/roomba_plots/*.pdf

.PHONY: all fetch_roomba_plots roomba_plots from_scratch show clean
