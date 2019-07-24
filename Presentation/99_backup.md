# End

## End

\centering

\Large

Thank you for your attention!

--

Questions?

\backupbegin

## Approximate Online POMDP Solvers

:::: {.columns}
::: {.column width="50%"}
\centering
**Determinized Sparse Partially Observable Tree (DESPOT)**
\justify
\vspace{20pt}


**Characteristics**

- determinized scenarios
- regularization
- maintain bounds on the \emph{value}

\pause
\vspace{10pt}
**High Level Idea**

- incrementally construct sparse tree to
  tighten bounds at the root
- choose action with best lower bound

\pause
\vspace{10pt}
**Domain Knowledge**

- user-defined initial bound estimates


:::
::: {.column width="50%"}
\centering
**Partially Observable Monte-Carlo Planning with Observation Widening (POMCPOW)**
\justify
\vspace{8pt}

**Characteristics**

- Monte-Carlo tree search
- weighted particle beliefs
- progressive widening

\pause
\vspace{24pt}
**High Level Idea**

- locally approximate the \emph{value function} through Monte-Carlo simulations
- choose action with highest value

\pause
\vspace{10pt}
**Domain Knowledge**

- user-defined value estimate


:::
::::


## Monte-Carlo Tree Search

![](./media/pomdp-solvers/mcts-general.pdf)


## Evaluation: Localization and Planning -- Objective Value

\centering
\textbf{Mean and SEM of the discounted return\\for 1000 simulations per policy.}
\vspace{-15pt}

![](media/localization-and-planning/plots/lp_value_sem_eval_plot-inf_discounted_reward.pdf){height="82%"}


## Evaluation -- Undiscounted Return

\centering
\textbf{Distribution of the undiscounted return\\for 1000 simulations per policy.}
\vspace{-15pt}

![](media/localization-and-planning/plots/lp_value_violin_eval_plot-undiscounted_reward.pdf){height="82%"}


## Evaluation: Localization and Planning -- Objective Value

**Distribution of the return for 1000 simulations per policy:**
![](media/localization-and-planning/plots/lp_value_violin_eval_plot-inf_discounted_reward.pdf)

## Evaluation: Motion Planning with Latent Human Intentions

![](media/motion-planning-hri/plots/hri_value_sem_plot.pdf)

## Evaluation: Motion Planning with Latent Human Intentions

![](media/motion-planning-hri/plots/hri_outcome_histogram_plot.pdf)
