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
section-titles: false
link-citations: true
numbersections: true
#mainfont: Latin Modern Roman
beamercovered: transparent
innertheme: rectangles
header-includes:
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
---

# Introduction

## Introduction

\begin{minipage}[c]{0.45\textwidth}
    \begin{figure}[htpb]
        \centering
        \hspace{-10pt}\includegraphics[height=0.7\textheight]{media/introduction/kiwi-berkeley-croped.png}
    \end{figure}
\end{minipage}
\begin{minipage}[c]{0.54\textwidth}
    \pause
    \textbf{Dealing with Uncertainty}
    \begin{itemize}
        \item worst case disturbance sequence
        \item probabilistic reasoning
    \end{itemize}
    \vspace{20pt}
    \pause
    \textbf{This Work: POMDP}
    \pause
    \begin{itemize}\itemsep0.5em
        \item problem specific approximations\\\pause vs. full POMDP approaches
        \pause
        \item application examples:
            \begin{enumerate}
                \item localization and planning
                \item motion planning around humans
            \end{enumerate}
    \end{itemize}
\end{minipage}

\note[item]{Manny planning problems in robotics are subject to inherent uncertainty (kiwi example)}
\note[item]{Considering uncertainty often crucial for performance and robustness or may even prevent solving the
problem in a principled manner in the first place}
\note[item]{traditional \textit{robust control} approach: worst case disturbance sequences (adversarial game type approaches)}
\note[item]{Too conservative, better: probabilistic consideration of uncertainty}
\note[item]{Suitable framework: POMDPs}
\note[item]{However, computationally complex -- thus avoided. Rather: problem specific solvers (solver approximate version of the POMDP)}
\note[item]{We study the use of POMDPs for planning under uncertainty in robotics at the example of two applications domains: `localization and planning` and `motion planning around humans`}

## Outline

\itodo{Write outline or print `TOC`}

1. The Partially Observable Markov Decision Process

2. Approximate Online POMDP Solvers: DESPOT and POMCPOW (one page for both solver)

3. Simultaneous Localization and Planning

    - Problem Statement
    - Solver Adaption and Baselines
    - Evaluation

4. Motion Planning with Latent Human Intentions

    - Problem Statement
    - POMCPOW Adaption and Baseline
    - Evaluation

# Theory

## The Partially Observable Markov Decision Process


\begin{minipage}[t]{0.59\textwidth}
    \textbf{Dynamic Decision Network}

    \hspace{-20pt}
    \begin{figure}[htpb]
        \begin{overprint}
            \onslide<1>\centering\includegraphics[width=0.8\textwidth]{media/pomdp/pomdp-mdp-gray-ddn.pdf}
            \onslide<2->\centering\includegraphics[width=0.8\textwidth]{media/pomdp/pomdp_ddn.pdf}
        \end{overprint}
    \end{figure}
\end{minipage}
\begin{minipage}[t]{0.39\textwidth}
    \textbf{\onslide<2->{PO}\onslide<1->{MDP}}
    \vspace{10pt}
    \begin{itemize}[<1->]
            \item state $s$
            \item action $a$
            \item reward $r$
    \end{itemize}
    \begin{itemize}[<2->]
            \item observation $o$
            \item initial belief $b_0$
    \end{itemize}
%    \vspace{5pt}
%    Types of Uncertainty:
%    \begin{itemize}[<1->]
%            \item outcome uncertainty
%    \end{itemize}
%    \begin{itemize}[<2->]
%            \item state uncertainty
%    \end{itemize}
\end{minipage}
\textbf{Objective}: Finding a policy $\pi^*$ that maximizes
\begin{equation} \label{eq:objective}
    J(\pi) = E\left[\sum_{t=0}^\infty \gamma^t r_t)\right] \text{.}
\end{equation}
\note{\itodo{test}}
\note[item]{Partially observed MDP: MDP at its core and state inferred through observations}
\note[item]{explain all parts: state, action, observation, reward ...}
\note[item]{MDP: state obeys the \emph{Markov Property}}
\note[item]{Allows to model two types of uncertainty: \textbf{state
            uncertainty} (state is not known exactly but indirectly observed) and
            \textbf{outcome uncertainty} (e.g. dynamics not exactly known)}

## Approximate Online POMDP Solvers

\note{\textbf{DESPOT}}
\note[item]{Sequentially constructs a DESPOT by simulating a fixed set of scenarios.}
\note[item]{Uses upper bounds to guide the search (heuristic) and lower bounds for regularization and pruning}

\note{\textbf{POMCPOW}}
\note[item]{MCTS with value estimate and double progressive widening (there won't be time to explain double progressive widening)}
