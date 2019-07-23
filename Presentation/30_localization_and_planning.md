# Localization and Planning

## Localization and Planning

[columns]

[column=0.45]

**Screenshot of the Simulator**

![](./media/localization-and-planning/examples/mlmpc/mlmpc_stuck_frames/out00000.jpg)

![](./media/localization-and-planning/examples/mlmpc/mlmpc_stuck_frames/out00010.jpg)

[column=0.55]

**Problem Details**

- \emph{known room} but \emph{unknown location}
- dynamics: noisy differential drive
    - actions: left, right, straight
- observations: collision sensor

\vspace{5pt}
\pause
**Objective**

- success: leave room at exit (green)
- failure: falling down stairs (red)
- penalties: time and collisions

\vspace{5pt}
\pause
**POMDP**

- continuous state space
- discrete action and observation space

[/columns]


## Baselines

**Mode Control**

- use mode of belief to approximate $s$
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
- Model Predictive Control (MPC)
- cost function: negative reward

:::
::::

\centering
\vspace{20pt}
$\Rightarrow$ MLMPC is an optimal policy for the fully observed version (MDP)


## Adaption of POMCPOW and DESPOT

## Evaluation

![](media/localization-and-planning/plots/lp_value_sem_eval_plot-inf_discounted_reward.pdf)

## Evaluation

![](media/localization-and-planning/plots/lp_value_violin_eval_plot-inf_discounted_reward.pdf)

## Evaluation

![](media/localization-and-planning/plots/lp_value_sem_eval_plot-undiscounted_reward.pdf)

## Evaluation

![](media/localization-and-planning/plots/lp_value_violin_eval_plot-undiscounted_reward.pdf)
