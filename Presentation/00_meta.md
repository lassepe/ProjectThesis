---
title: |
    | Partially Observable Markov Decision Processes
    | for Planning in Uncertain Environments
shorttitle: POMDP Planning
author: |
    | Project Thesis
    | Lasse Peters
    |
    | Institute of Mechanics and Ocean Engineering
    | \scriptsize Prof. Dr.\-Ing.\ Robert Seifried
    | \scriptsize Hamburg University of Technology
    |
    | \normalsize Hybrid Systems Laboratory
    | \scriptsize Prof. Claire J. Tomlin
    | \scriptsize University of California at Berkeley
    |
    | 25.07.2019
section-titles: true
link-citations: true
numbersections: true
#mainfont: Latin Modern Roman
beamercovered: invisible
innertheme: rectangles
header-includes:
    - \usepackage{ragged2e}
    - \usepackage{animate}
    - \usepackage[export]{adjustbox}
    - \usepackage{chngpage}
    - \usepackage{todonotes}
    - \usepackage{multimedia}
    - \usepackage{multicol}
    - \newcommand{\itodo}[1]{\todo[inline]{#1}}
    - \newcommand{\hideFromPandoc}[1]{#1}
         \hideFromPandoc{
             \let\Begin\begin
             \let\End\end
         }
    # - \setbeameroption{show notes}
    # - \usepackage{pgfpages}
    # - \setbeameroption{show notes on second screen=right}
    - \newcommand{\backupbegin}{\newcounter{finalframe} \setcounter{finalframe}{\value{framenumber}}}
    - \newcommand{\backupend}{\setcounter{framenumber}{\value{finalframe}}}
    - \newcommand{\columnsbegin}{\begin{columns}}
    - \newcommand{\columnsend}{\end{columns}}
---
