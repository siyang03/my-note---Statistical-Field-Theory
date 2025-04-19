#import "@preview/physica:0.9.5": *
#import "@preview/muchpdf:0.1.0": muchpdf // insert pdf figures
//--------------------------------------------------
= fundamentals of statistical mechanics
- 本 section 快速回顾统计物理中的内容.

== the microscopic states
- microscopic state 就是系统中每个粒子的准确状态.
  - 量子力学中用 $ket(psi)$ 描述.

  - 经典力学中用 $p = (p_1, dots, p_N), q = (q_1, dots, q_N)$ 描述 (即相空间中的一个点).

== the ensembles
- ensemble 是一定条件下, 系统的 microscopic state 的可能分布.
  - 量子力学用 density matrix 描述,
    $
      rho = cases(
        display(ket(psi) bra(psi) & "pure ensemble"),
        display(sum_i p_i ket(psi_i) bra(psi_i) & "mixed ensemble"),
      ).
    $
  
  - 经典力学用 probability density 描述, 即系统处于 $(p, q)$ 的概率密度
    $
      rho(p, q, t).
    $

- 微观态的概率分布随时间演化的方程为
  $
    cases(
      display(i hbar (partial rho)/(partial t) = [H, rho] & "in QM"),
      display((partial rho)/(partial t) = {H, rho}_("PB") equiv sum_i ((partial H)/(partial q_i) (partial rho)/(partial p_i) - (partial rho)/(partial q_i) (partial H)/(partial p_i)) & "in classical mechanics"),
    ),
  $
  这两个方程分别称为 von Neumann's equation 和 Liouville's equation.

== the equilibrium ensembles
- 满足
  $
    (partial rho)/(partial t) = 0
  $
  的 ensemble 称为 equilibrium ensemble.
  - 无论是量子理论还是经典理论, 如果 $rho$ 是 $H$ 的函数, 那么就一定是 equilibrium ensemble.

- 下面是几种 equilibrium ensembles:

#align(center)[
#table(
  stroke: none,
  columns: 3,
  align: left,
  table.hline(stroke: 0.75pt),
  table.header(
    [ensemble], [macroscopic variables], $rho$
  ),
  table.hline(stroke: 0.5pt),
  [microcanonical], $N, V, E$, $rho_("MC") = (1)/(Omega(E)) delta(H - E)$,
  [canonical], $N, V, T$, $rho_"C" = (1)/(Z) e^(- beta H)$,
  [grand canonical], $mu, V, T$, $rho_("GC") = (1)/(Z_("GC")) e^(- beta (H - mu N))$,
  table.hline(stroke: 0.75pt),
)
]

#pagebreak()
