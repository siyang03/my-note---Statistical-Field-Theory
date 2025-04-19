#import "@preview/physica:0.9.5": *
#import "@preview/muchpdf:0.1.0": muchpdf // insert pdf figures
#import "@preview/ouset:0.2.0": * // overset
//--------------------------------------------------
= from spins to fields
== the Ising model
- Ising model 由 $D$ 维空间中的 $N$ 个格点 (lattice site) 组成, 每个格点可以处于两种态,
  $
    s_i = plus.minus 1,
  $
- 一组 ${s_i}$ 的能量为
  $
    H({s_i}) = - B sum_i s_i - J sum_(expval(i j)) s_i s_j,
  $
  其中 $expval(i j)$ 表示对格点中所有 "nearest neighbour" pairs 求和, $expval(i j)$ 的数量依赖于 $D$ 和 the type of lattice.

  - 如果 $B > 0$, 格点倾向于 $s_i = + 1$ 的态.

  - 如果 $J > 0$, 格点倾向于 $arrow.t arrow.t$ 或 $arrow.b arrow.b$, 这种系统称为 a ferromagnet, 反之则称为 an anti-ferromagnet.

#line(stroke: (thickness: 0.5pt), length: 100%)

- in canonical ensemble, 状态 ${s_i}$ 的概率为
  $
    p({s_i}) = (e^(- beta H({s_i})))/(Z),
  $
  其中 partition function 为
  $
    Z(beta, J, B) = sum_({s_i}) e^(- beta H({s_i})).
  $ <partition_function_in_canonical_ensemble_of_Ising_model>

- equilibrium magnetisation 为
  $
    m = (1)/(N) expval(sum_i s_i) in [- 1, + 1].
  $
  利用 @partition_function_in_canonical_ensemble_of_Ising_model, 可知
  $
    m = (1)/(N beta) (partial ln Z)/(partial B).
  $

#table(stroke: (paint:olive),[
#text(fill:olive)[*calculation:*]

#text(fill:luma(120))[
$
  m &= (1)/(N) sum_({s_i}) (e^(- beta H({s_i})))/(Z) sum_i s_i \
  &= - (1)/(N) sum_({s_i}) (e^(- beta H({s_i})))/(Z) (partial H)/(partial B) = - (1)/(N Z) (1)/(- beta) (partial Z)/(partial B) = dots
$
]])

=== the effective free energy
- 用以下办法定义 $F(m)$,
  $
    Z = sum_m sum_({s_i}|m) e^(- beta H({s_i})) := sum_m e^(- beta F(m)) overset(approx, N -> oo) (N)/(2) integral_(- 1)^(+ 1) d m thin e^(- beta F(m)),
  $
  其中 ${s_i}|m$ 表示所有 $(1)/(N) sum_i s_i = m$ 的 ${s_i}$.
  - 系数 $N/2$ 对物理没有影响, 可以忽略.
