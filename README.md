# Encyclopaedia of Derivations

Author: Abderrahim Adrabi, Mohammed V University in Rabat.  
Current version: **v0.21**.

## The idea of the book

A derivation obeys the product rule: an additive map d with d(xy)=d(x)y+xd(y). Leibniz wrote that rule in 1684 for the calculus, and three centuries later the same equation defines a map on any ring. This book follows the equation from the calculus to the present, class by class. The classes begin with commutative rings, and continue with the prime and semiprime rings and the Jordan, Lie, Leibniz, alternative, Malcev, Poisson, super and n-ary algebras. They continue with path, incidence and Leavitt path algebras; matrix, triangular, polynomial and Weyl algebras; Banach and operator algebras; group and Hopf algebras; and differential fields with their Galois theory. The book follows the equation into the maps that weaken it as well, which are higher derivations, biderivations and other multiadditive maps. They are the local and 2-local derivations, the generalized and twisted derivations, and the commuting and centralizing maps that a derivation must be. The book follows it too into the groups that measure it. These are the Hochschild cohomology of an algebra and the Gerstenhaber bracket on it, whose first cohomology group is the derivations modulo the inner ones. For each class it states the definitions with their located sources, records the theorems that settle which derivations are inner, and reports the questions still open. Every statement belongs to a source read in full from the page, and the book states no result of its own.

### Contents


**Foundations and history**

- Origins of the notion, from Leibniz to Hochschild
- Basic theory and the family of derivations

**Derivations of associative rings**

- Derivations of prime and semiprime rings
- Jordan derivations and Jordan-type maps
- Lie derivations and Lie-type maps

**Enlarged classes and local maps**

- Generalized, skew and twisted derivations
- Higher, bi- and n-derivations
- Local maps and characterizations through products
- Functional identities and commuting maps

**Concrete classes of associative algebras**

- Matrix, triangular and generalized matrix algebras
- Path, incidence, trivial extension and Leavitt path algebras
- Polynomial, Weyl and differential operator algebras
- Group algebras, Hopf algebras and quantum groups

**Nonassociative algebras**

- Derivations of Lie algebras
- Jordan, alternative, Leibniz algebras and superalgebras
- Derivations of near-rings, semirings, Gamma-rings and lattices

**Commutative and differential algebra**

- Derivations in commutative algebra and geometry
- Differential algebra and differential Galois theory

**Analysis and cohomology**

- Derivations of Banach and operator algebras
- Hochschild cohomology and deformations

**Appendices**

- Atlas of the literature
- Question tables

## Repository layout

| Path | Content |
|---|---|
| `paper/derivations-encyclopaedia.tex` | LaTeX source, assembling the chapters in `paper/chapters/` |
| `pdf/` | the PDF of the latest release |
| `lean/Research/DerivationsEncyclopaedia/` | Lean 4 files that check computations and lemmas of the paper (mathlib only) |

Build the paper with `cd paper && latexmk -pdf derivations-encyclopaedia.tex`. Build the Lean files with `cd lean && lake build`.

## Change log

One entry per released version, newest first. Each version is also a tag of this repository.

- **v0.21** (2026-11-18): the audit that v0.20 left open: every gate passes, 959 of 976 references in the zip, 980 citation rows classified and recorded
- **v0.20** (2026-11-15): section sync: every printed number from the census, eight false origins exclusions corrected, the abstract judge given the sourcing evidence it needs (commit b444d251f1dcd11278f0e98f3972ba33b08f3153)

## References

The works this book cites are listed in its bibliography (`bib/encyclopaedia.bib`). The works themselves are not part of this repository.


## About this repository

The repository is updated after every release of the paper. The research workspace that produced it is private; the final source, PDF and Lean code are published here.
