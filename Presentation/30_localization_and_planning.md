# Application Domain: Localization and Planning

## Localization and Planning

[columns]

[column=0.45]

**Screenshot of the Simulator**

![](./media/localization-and-planning/examples/mlmpc/mlmpc_stuck_frames/out00000.jpg)

![](./media/localization-and-planning/examples/mlmpc/mlmpc_stuck_frames/out00010.jpg)

[column=0.55]

**Problem Details**

- \emph{known room} but \emph{unknown location}
\pause
\vspace{5pt}
- objective:
    - success: leave room at exit (green)
    - failure: falling down stairs (red)
    - penalties: time and collisions
\vspace{5pt}
- observations: collision sensor
\vspace{5pt}
- dynamics: noisy differential drive
    - actions: left, right, straight

\vspace{5pt}
\pause
**POMDP**

- continuous state space
- discrete action and observation space

[/columns]


## Baselines

\large
**Mode Control**
\normalsize

- use mode of belief to approximate the state
- treat POMDP as fully observable problem

\vspace{10pt}
\vspace{10pt}

\pause
:::: {.columns}
::: {.column width="50%"}

\centering
**Most Likely Reflex Agent (MLRA)**

\vspace{5pt}
- handcrafted feedback policy
- P-controller tracking preset path


:::

\pause
\hspace{5pt}
\vline
::: {.column width="50%"}

\centering
**Most Likely Model Predictive Control (MLMPC)**

\vspace{5pt}
- use MPC to plan a path
- cost function: negative reward

:::
::::

\centering
\vspace{20pt}
$\Rightarrow$ MLMPC is an optimal policy for the fully observed problem (MDP)

## Integrating Domain Knowledge for POMDP Solvers

**Value Estimates**

1. Rollout Value Estimate
    - simulate default policy: "always straight"

2. Analytic Value Estimate
    - estimate remaining steps from distance to goal
    - approximate value by cumulative living penalty


\vspace{5pt}
\pause

\vspace{5pt} **POMDP Solver Setups**


1. DESPOT-rollout
2. DESPOT-analytic
3. POMCPOW-rollout
4. POMCPOW-analytic

## Evaluation -- Undiscounted Return

\centering
\textbf{Mean and SEM of the undiscounted return\\for 1000 simulations per policy.}
\vspace{-15pt}

![](media/localization-and-planning/plots/lp_value_sem_eval_plot-undiscounted_reward.pdf){height="82%"}

## Evaluation -- Outcome Distribution

\centering
**Histogram of outcome frequencies grouped by policy.**
![](media/localization-and-planning/plots/lp_outcome_eval_plot.pdf){height="90%"}

## Evaluation -- Outcome Distribution

[columns]

[column=0.5]

**Initial Conditions**
![](./media/localization-and-planning/examples/mlmpc/mlmpc_stuck_frames/out00000.jpg)


[column=0.5]

**Histogram of outcome frequencies grouped by policy.**
![](media/localization-and-planning/plots/lp_outcome_eval_plot.pdf){width="100%"}

[/columns]

\pause
\centering
$\Rightarrow$ POMCPOW-analytic near optimal with respect to safety

## Evaluation -- Qualitative Analysis


:::: {.columns}
::: {.column width="50%"}
\centering
**MLMPC**

\vspace{10pt}
\begin{itemize}
    \item<2-> mode approximation compromises safety
    \vspace{3pt}
    \item<2-> passive information gathering
    \vspace{3pt}
    \item<2-> fails for highly symmetric beliefs
\end{itemize}

:::
\vline
::: {.column width="50%"}
\centering
**POMCPOW-Analytic**

\vspace{10pt}
\begin{itemize}
    \item<3-> active information gathering
    \vspace{3pt}
    \item<3-> reliably reduces uncertainty
    \vspace{3pt}
    \item<3-> safe and efficient behaviors
\end{itemize}


:::
::::
