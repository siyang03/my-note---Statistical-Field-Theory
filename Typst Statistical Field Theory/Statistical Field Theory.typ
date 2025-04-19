#import "@preview/physica:0.9.5": *
#import "@preview/muchpdf:0.1.0": muchpdf // insert pdf figures
#import "@preview/ouset:0.2.0": * // overset
//--------------------------------------------------
#set page(
  paper: "a4",
  margin: (
    x: 2cm, // left & right
    y: 2cm, // top & bottom
  ),
  numbering: "1",
)
#set text(
  font: ("New Computer Modern","GenRyuMin JP R"),
  size: 10pt,
)
#import "@preview/cuti:0.3.0": show-cn-fakebold // bold Chinese font
#show: show-cn-fakebold
#set par(
  justify: true, // 两端对齐
  leading: 0.52em, // 行间距
  first-line-indent: 0em, // 首行缩进
)
//--------------------------------------------------
// horizontal lines:
//#line(stroke: (thickness: 0.5pt), length: 100%)
//#line(stroke: (dash: "dashed", thickness: 0.5pt), length: 100%)
//--------------------------------------------------
// a calculation box:
//#table(stroke: (paint:olive),[
//#text(fill:olive)[*calculation:*]
//
//#text(fill:luma(120))[
//content...
//]])
//--------------------------------------------------
#show link: it => text(fill: purple)[#it] // color of urls
#show cite: it => text(fill: blue)[#it] // color of links to bibliography
#show ref: it => text(fill: red)[#it] // color of internal links
#show outline.entry: set text(fill: red) // color of ToC
//--------------------------------------------------
// equation numbering within subsection ------------
#show heading.where(level: 1): it => {
  counter(math.equation).update(0)
  it
}
#show heading.where(level: 2): it => {
  counter(math.equation).update(0)
  it
}
#set math.equation(numbering: (n) => {
  // Grab the current heading numbers: [section, subsection, ...]
  let counts = counter(heading).get()
  let s  = counts.first()                  // section number
  let ss = counts.at(1, default: 0)        // subsection number (0 if none)
  // Pattern "(1.1.1)" has three '1's → they get replaced by s, ss, n
  numbering("(1.1.1)", s, ss, n)
})
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#let title="Statistical Field Theory"
#let author="Siyang Wan (万思扬)"
#let date="April 19, 2025"
//--------------------------------------------------
#set page(numbering: none)
#align(center + horizon, text(20pt)[
  *#title*
])
#align(center)[
  #author \
  #date
]
#pagebreak()

#counter(page).update(1)
#set page(numbering: "1")
#outline() // ToC
#pagebreak()
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#include "sections/convention, notation and units.typ"
//--------------------------------------------------
#set heading(numbering: "1.")
#include "sections/fundamentals of statistical mechanics.typ"
#include "sections/from spins to fields.typ"
//--------------------------------------------------
// appendices start here
#counter(heading).update(0) // section heading numbering
#set heading(numbering: "A.1.")
// equation numbering within subsection ---------------------
#show heading.where(level: 1): it => {
  counter(math.equation).update(0)
  it
}
#show heading.where(level: 2): it => {
  counter(math.equation).update(0)
  it
}
#set math.equation(numbering: (n) => {
  // Grab the current heading numbers: [section, subsection, ...]
  let counts = counter(heading).get()
  let s  = counts.first()                  // section number
  let ss = counts.at(1, default: 0)        // subsection number (0 if none)
  // Pattern "(1.1.1)" has three '1's → they get replaced by s, ss, n
  numbering("(A.1.1)", s, ss, n)
})
//#include "sections/appendix.typ"
