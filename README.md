# ProjectThesis

Partially Observable Markov Decision Processes for Planning in Uncertain Environments.

## Introduction

This repository should contain everything to compile the project thesis. Thus, it mainly contains
the `tex` files. Additionally, implementations of application examples are featured as git submodules.

Structure of this repository:

- main file: `Thesis.tex`
- output: `Thesis.pdf`
- chapter content: `./Chapters/*.tex`
- figures: `./Figures/`
- submodules: `./code/`

## Dependencies

For Arch Linux, these are the relevant dependencies

**core:**

- `texlive-most`
- `latexmk`
- `make`

If you want to compile with submodules, you additionally need to install the dependencies mentioned
in the corresponding ![submodules](.gitmodules).

## Build Instructions

This project contains a `Makefile`. Thus, compiling the project is as simple as
running `make` with the corresponding target from the project root.

### PDF only (no submodule setup required)

Compile pdf document.

```bash
make
```

In order to clean all build files, run:

```bash
make clean
```

### compile all plots + PDF + appendix archive

If you want to create the plots yourself, you will need to setup the git submodules first. Simply run:

```bash
make install_submodules
```

In order to compile the plots, fetch the plots, compile the `pdf` document and create the appendix archive, run:

```bash
make from_scratch
```

In order to run individual steps of the `from_scratch` target, refer to the list below:

#### Compile Plots

```bash
# roomba plots:
make compile_roomba_plots
# HRI plots:
make compile_hri_plots
```

**Notice:** This will only compile the plots and output them to the `results/final_results/plots` directory of each submodule.

In order to fetch the plots from the submodules, run:

```bash
# fetch roomba plots:
make fetch_roomba_plots
make fetch_hri_plots
```

#### Create Appendix Archive

```bash
# create appendix archive:
make appendix_archive
```
