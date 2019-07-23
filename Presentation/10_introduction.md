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

1. Theory

2. Simultaneous Localization and Planning

3. Motion Planning with Latent Human Intentions

4. Conclusion
