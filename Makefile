MAIN=Thesis
BIB=lit/thesis.bib

all: $(MAIN).pdf

$(MAIN).pdf: $(shell find . -name "*.tex") $(BIB)
	# fetch plots:
	latexmk -pdf Thesis.tex

install_submodules:
	git submodule init;\
	git submodule update

# if the submodules are installed, we can fetch fresh plots from there
with_submodules: fetch_roomba_plots fetch_hri_plots

# copy the plots from the roomba subomdule
fetch_roomba_plots:
	cp code/RoombaPOMDPs.jl/results/final_results/plots/*.pdf ./Figures/roomba_plots/
# compile the roomba plots from scratch
compile_roomba_plots:
	cd ./code/RoombaPOMDPs.jl;\
	julia --project -e 'using Pkg; Pkg.instantiate(); include("scripts/generate_plots.jl"); create_eval_plot();'\
	cd -

# fetch the human switching plots
fetch_hri_plots:
	cp code/HumanSwitching.jl/results/final_results/plots/*pdf ./Figures/hri_plots/
# TODO: compile_humanswitching_plots

from_scratch: compile_roomba_plots fetch_roomba_plots all

clean:
	latexmk -CA

clean_all:
	trash-put ./Figures/roomba_plots/*.pdf || 1
	trash-put ./code/RoombaPOMDPs.jl/results/final_results/plots/*.pdf || 1

.PHONY: all install_submodules with_submodules fetch_roomba_plots compile_roomba_plots fetch_hri_plots from_scratch
