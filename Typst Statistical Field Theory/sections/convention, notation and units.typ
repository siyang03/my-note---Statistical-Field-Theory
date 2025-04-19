#import "@preview/physica:0.9.5": *
#import "@preview/muchpdf:0.1.0": muchpdf // insert pdf figures
#import "@preview/ouset:0.2.0": * // overset
//--------------------------------------------------
= convention, notation and units
- 使用 Plank units, 此时 $G, hbar, c, k_B = 1$, 因此:

#align(center)[
#table(
  stroke: none,
  columns: 2,
  align: left,
  table.hline(stroke: 0.75pt),
  table.header(
    [name / dimension], [expression / value]
  ),
  table.hline(stroke: 0.5pt),
  [Plank length ($L$)], $l_P = sqrt((hbar G)/(c^3)) = 1.616 times 10^(- 35) thin "m"$,
  [Plank time], $t_P = (l_P)/(c) = 5.391 times 10^(- 44) thin "s"$,
  [Plank mass], $m_P = sqrt((hbar c)/(G)) = 2.176 times 10^(- 8) thin "kg" tilde.eq 10^(19) thin "GeV"$,
  [Plank temperature], $T_P = sqrt((hbar c^5)/(G k_B^2)) = 1.471 times 10^(23) thin "K"$,
  table.hline(stroke: 0.75pt),
)
]

- 时空维度用 $d = D + 1$ 表示, 通常考虑 $D = 3$.

#line(stroke: (thickness: 0.5pt), length: 100%)

- 下面是 _Statistical Field Theory_, David Tong, 中引言的一部分.

  #quote(block: true, attribution: "David Tong")[
  ... This phenomenon is known as _universality_.

  All of this makes phase transitions interesting. They involve violence, universal truths
  and competition between rival states. The story of phase transitions is, quite literally,
  the song of fire and ice.

  ...

  ... This leads us to a paradigm which now underlies huge swathes of physics, far removed from its humble origin of a pot on a stove. This paradigm revolves around two deep facts about the Universe we inhabit: *Nature is organised by symmetry. And Nature is organised by scale.*
  ]

  其中 symmetry 指 Landau's approach to phase transitions, scale 是指 renormalization group.

#pagebreak()
