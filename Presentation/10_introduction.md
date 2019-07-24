# Introduction

## Introduction

\begin{minipage}[c]{0.44\textwidth}
    \begin{figure}[htpb]
        \centering
        \hspace{-10pt}\includegraphics[height=0.7\textheight]{media/introduction/kiwi-berkeley-croped.png}
    \end{figure}
\end{minipage}
\begin{minipage}[c]{0.54\textwidth}
    \textbf{Types of Uncertainty}
    \begin{itemize}
        \item state uncertainty
        \item outcome uncertainty
    \end{itemize}
    \pause
    \vspace{10pt}
    \textbf{Dealing with Uncertainty}
    \begin{itemize}
        \item worst case disturbance sequences
        \item probabilistic reasoning
    \end{itemize}
    \pause
    \vspace{10pt}
    \textbf{POMDPs}
    \begin{itemize}
        \item general framework
        \item computationally demanding
        \pause
        \item recent research: faster solvers
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

## Introduction

\begin{minipage}[c]{0.44\textwidth}
    \begin{figure}[htpb]
        \centering
        \hspace{-10pt}\includegraphics[height=0.7\textheight]{media/introduction/kiwi-berkeley-croped.png}
    \end{figure}
\end{minipage}
\begin{minipage}[c]{0.54\textwidth}
    \textbf{This Work}
    \begin{itemize}\itemsep0.5em
        \item problem specific approximations\\\pause vs. full POMDP approaches
        \pause
        \begin{overprint}
        \onslide<-3>\item application domains:
            \begin{enumerate}
                \item localization and planning
                \item motion planning with latent human intentions
            \end{enumerate}
        \onslide<4->\item application domains:
            \begin{enumerate}
                \item localization and planning
                \item \textcolor{lightgray}{motion planning with latent human intentions}
            \end{enumerate}
        \end{overprint}
    \end{itemize}
\end{minipage}

## Outline

1. The Partially Observable Markov Decision Process

2. Approximate Online POMDP Solvers
    - DESPOT
    - POMCPOW

3. Application Domain: Localization and Planning
    - Baselines
    - POMDP Solvers

4. Conclusion and Future Work
