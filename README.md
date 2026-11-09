# Handbook of Derivations of Rings and Algebras

Author: Abderrahim Adrabi, Mohammed V University in Rabat.
Current version: **v0.19**. 462 pages, 20 chapters, 452 cited works.

## The idea of the book

A derivation records the linear data of a product: the rule $d(xy)=d(x)y+x\,d(y)$ says
that $d$ measures how a product changes. The same rule, imposed with one change at a
time, gives the family this book is about. Change the product and the rule gives Jordan,
Lie, triple and $n$-ary derivations. Change the map and it gives generalized, skew and
twisted derivations. Ask the rule only at a point or on a product and it gives local
derivations and derivable maps. Ask for two or more variables and it gives bi-,
tri- and $n$-derivations. Ask for the rule after a group action and it gives
$\sigma$-derivations, higher derivations and Hasse--Schmidt sequences.

The book follows this development in the order the literature took it, from Leibniz
and the differential quotients of Hasse and Schmidt, through the theorems of Posner,
Herstein and Brešar, to the operator-algebra and cohomological work of the present
decade. It covers 173 named kinds of derivation-like map, taken from the titles of the
papers in a harvested corpus of about nineteen thousand works.

Every definition, theorem and example comes from a cited source, with the printed page
and the numbered item. The book states no result of its own.

### Contents

| Part | Chapters |
|---|---|
| I. Foundations and history | Origins; basic theory and the family of derivations |
| II. Associative rings | Prime and semiprime rings; Jordan-type; Lie-type maps |
| III. Enlarged classes and local maps | Generalized, skew and twisted; higher, bi- and $n$-derivations; local maps; functional identities |
| IV. Concrete classes | Matrix and triangular; path, incidence, trivial extension, Leavitt; polynomial and Weyl; group, Hopf, quantum |
| V. Nonassociative algebras | Lie algebras; Jordan, alternative, Leibniz, superalgebras |
| VI. Commutative and differential | Commutative algebra and geometry; differential algebra |
| VII. Analysis and cohomology | Banach and operator algebras; Hochschild cohomology |
| VIII. Closing | Open problems; near-rings, semirings, Gamma-rings and lattices |

## Repository layout

| Path | Content |
|---|---|
| `derivations-encyclopaedia.tex` | the main file; it assembles the parts below |
| `chapters/` | one folder per chapter, one file per section |
| `frontmatter/`, `backmatter/` | preface, how to use, notation, index of kinds, atlas, bibliography |
| `book/` | cover, title pages, imprint, contents |
| `style/encyclopaedia.sty` | the memoir layout, theorem styles and notation macros |
| `bib/encyclopaedia.bib` | the bibliography, grouped by year at build time |
| `data/atlas.tsv` | the harvested corpus: one row per work, with its chapter |
| `figures/` | TikZ figures, one folder per chapter |
| `scripts/bib-labels.sh` | generates the year labels and year groups of the bibliography |
| `pdf/` | the PDF of the latest release |
| `ROADMAP.md` | the plan, the binding rules, and the release order |

## Building

```bash
latexmk -pdf derivations-encyclopaedia.tex
```

The PDF lands in `build/`. It needs a TeX Live installation with memoir, biblatex,
biber and TikZ. Nothing else is required: the class files, the figures and the
bibliography script are all in this repository.

## The rules the book is written by

1. Every kind of derivation is in scope. None is left out for being minor or recent.
2. Every author is named. No "et al." in the text, no "and others" in the bibliography.
3. All regions and languages are cited on the same footing.
4. Every translation is stated: a quotation in another language prints the original.
5. Simple academic English, so that a reader whose first language is not English can
   follow every sentence on the first reading.
6. Examples sit in the section of the notion they illustrate, each from a source.
7. Each chapter is a narrative, told as one story, with sections only.
8. The book reads like a graduate monograph: balanced chapters, one notation throughout.
9. Everything comes from a reference, with its page or numbered item.

## Change log

One entry per released version, newest first. Each version is also a tag of this
repository.

- **v0.19** — the index of kinds states what its numbers count and why the list stops
  at two works; nine works that had no registered copy are now registered; two wrong
  source files were found and removed.
- **v0.18** — chapters 03, 06, 07, 10, 14, 15 and 18 grew by 78 works; the atlas
  recomputed from a 452-entry bibliography.

## Licence

Text and figures: CC BY 4.0. Code in `scripts/`: MIT.
