# 

Author: Abderrahim Adrabi, Mohammed V University in Rabat.  
Current version: **v0.20**.

## The idea of the paper



### Contents


## Repository layout

| Path | Content |
|---|---|
| `paper/derivations-encyclopaedia.tex` | LaTeX source (class files in `cls/`) |
| `pdf/` | the PDF of the latest release |
| `lean/Research/DerivationsEncyclopaedia/` | Lean 4 files that check computations and lemmas of the paper (mathlib only) |

Build the paper with `cd paper && latexmk -pdf derivations-encyclopaedia.tex`. Build the Lean files with `cd lean && lake build`.

## Change log

One entry per released version, newest first. Each version is also a tag of this repository.


## References

Citations of the works the paper uses. The works themselves are not part of this repository.


## About this repository

The repository is updated after every release of the paper. The research workspace that produced it is private; the final source, PDF and Lean code are published here.
