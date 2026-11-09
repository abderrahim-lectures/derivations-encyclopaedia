# Encyclopaedia of Derivations of Rings and Algebras: roadmap

Living edition, updated every month (owner directive, 2026-10-01). Project
issue: #532. Structure source of truth: `structure.txt`; the LaTeX tree is
built from it by `tools/scripts/encyclopaedia/build-tree.sh`.

## What the literature looks like

The zbMATH harvest of 2026-10-01 (15 MSC codes, `papergraph zbmath-codes`)
gives **19,390 papers**, 1870 to 2027, in `data/atlas.tsv`. Growth by decade:
under 70 papers before 1960, 92 in the 1960s, 722 in the 1970s, 1,207 in the
1980s, 2,391 in the 1990s, 4,213 in the 2000s, 5,908 in the 2010s and 4,751
so far in the 2020s.

The first harvest of 2026-10-01 used whole MSC codes. On 2026-10-12 the owner
observed that the plan named far fewer kinds of derivation than the literature
has. Sixteen narrow queries (the Q lines of `structure.txt`) now add the
derivation papers of the near-ring, semiring, Poisson, Hom-Lie, conformal,
Leibniz, $n$-ary and lattice codes, the stability papers (39B82), and the papers
on semiderivations, left, reverse, multiplicative and tri-derivations. The atlas
holds 19,795 papers; `data/atlas-exclude.txt` lists the 461 cited neighbours
that the queries stored and that are not about derivations. The plan gained one
chapter (22) and eleven sections; the kinds are listed in Section 2.7 and each
chapter treats its related kinds.

Papers filed per chapter (title rule, then primary MSC code; a paper can sit in
two chapters; 208 are unsorted; counts of 2026-10-12):

| Ch. | Topic | Papers | Notes from the counts |
|---|---|---|---|
| 01 | Origins, to 1947 | 31 | the classified record is thin before 1940; JFM title searches fill it |
| 02 | Basic theory and the family of derivations | 833 | general 16W25 papers |
| 03 | Prime and semiprime rings | 1432 | 965 titles name prime/semiprime rings, 70% since 2010 |
| 04 | Jordan-type maps | 283 | 148 titles say "Jordan derivation" |
| 05 | Lie-type maps | 251 | 118 of 144 "Lie derivation" titles are after 2010 |
| 06 | Generalized, skew and twisted | 1162 | "generalized derivation" alone: 670 titles, 537 since 2010 |
| 07 | Higher, bi- and n-derivations | 401 | biderivations mostly since 2010 |
| 08 | Local maps and product characterizations | 577 | local/2-local 164; zero products and preservers 328 |
| 09 | Functional identities and commuting maps | 613 | 345 titles on commuting/centralizing maps or FIs |
| 10 | Matrix and triangular algebras | 846 | "triangular" in 348 titles, 75% since 2010 |
| 11 | Path, incidence, trivial extension, Leavitt | 274 | small and recent |
| 12 | Polynomial, Weyl, differential operators | 1906 | 16S32 and 13N10 |
| 13 | Group, Hopf, quantum | 833 | |
| 14 | Lie algebras | 2456 | 17B40 and 17B66 |
| 15 | Jordan, alternative, Leibniz, superalgebras | 1555 | superalgebras 343 titles |
| 16 | Commutative algebra and geometry | 1483 | Kähler, locally nilpotent (91), Jacobian (14R10: 810) |
| 17 | Differential algebra and Galois theory | 1142 | 12H05 |
| 18 | Banach and operator algebras | 3619 | 47B47 is the largest single code |
| 19 | Hochschild cohomology and deformations | 2179 | 16E40 |
| 20 | Applications | 1989 | primary MSC in physics, PDE, coding |
| 21 | Open problems | - | collected from every chapter |
| 22 | Near-rings, semirings, Gamma-rings and lattices | 568 | added 2026-10-12 (owner: more kinds of derivation); harvested with Q lines |

## Three names for one object (added 2026-10-02)

Inner derivation (rings and algebras), principal derivation and principal
crossed homomorphism (groups) name one object; derivation and crossed
homomorphism are the same pair one level up. The book follows this line in
four places:

| Where | What |
|---|---|
| §1.2 | Dedekind and Hilbert: the different, defined through the derivative $F'(\vartheta)$ (Hecke 1923, §36, read in full) |
| §1.8 | Hilbert Satz 90 (1897), Speiser 1919, Brauer and Noether 1927, Noether 1934, Eilenberg and Mac Lane 1947, Weibel 1994 and 1999 |
| §2.3 | the vocabularies side by side, with $H^1 = \mathrm{Der}/\mathrm{PDer}$ |
| §13.4, §19.5 | crossed products and Galois descent; derivations of groups and $H^1$ of groups (MSC 20J06, now harvested) |

Sources not yet read (no open copy in papergraph; listed in
`ledger/manual-downloads.md`): Hilbert, Zahlbericht (row 143003);
Dedekind and Weber 1882 (row 44702); Ritt 1932 (row 91017); Noether 1934
(row 143380); Brauer and Noether 1927; Hensel and Landsberg 1902.

## Book layout (v0.2)

The book is assembled by `derivations-encyclopaedia.tex` from separate parts, each in
its own file, so a part can change without touching the chapters:

| Folder | Files | What |
|---|---|---|
| `style/` | `encyclopaedia.sty` | memoir layout (170 x 240 mm), fonts, chapter and running-head styles, theorem styles, notation macros, metadata (`\hbtitle`, `\hbversion`, ...) |
| `book/` | `cover`, `half-title`, `title-page`, `imprint`, `dedication`, `contents`, `index` | the book apparatus: TikZ cover, title pages, copyright and MSC page, contents with lists of figures and tables, index (imakeidx) |
| `frontmatter/` | `preface`, `how-to-use`, `notation` | front chapters |
| `chapters/` | `NN-slug/SS-slug.tex` | built from `structure.txt` |
| `backmatter/` | `atlas`, `question-tables`, `bibliography` | appendices and references |
| `figures/` | `NN-slug/` | one folder per chapter; `\includegraphics{NN-slug/name}` |

Builds:
- whole book: `cd paper/maths/derivations-encyclopaedia && latexmk -pdf` (build/derivations-encyclopaedia-vX.Y.pdf);
- one chapter alone: `tools/scripts/encyclopaedia/build-chapter.sh paper/maths/derivations-encyclopaedia NN`
  (build/derivations-encyclopaedia-chapter-NN.pdf; references to other chapters are undefined there and resolve in the book).

Bibliography: grouped by year, alphabetical (first author, then title)
within each year, and cited as [YEAR-n], e.g. [1925-2]. The labels and year
sections are generated from `bib/encyclopaedia.bib` at every build by
`tools/scripts/encyclopaedia/bib-labels.sh` (biblatex and biber); never number
entries by hand. Labels within a year can shift when an entry is added, which
is why they are generated.

Long section titles take a short form for the running head with the memoir form
`\section[toc title][head title]{title}`.

## Binding rules (owner, 2026-10-02)

1. **Every kind of derivation** is in scope; none is left out because it is
   minor or recent. A new kind found in the monthly update gets a section.
2. **Every author, always.** Never write "et al." in the text, and never use
   `and others` in a bib entry (amsplain prints it as "et al."). A paper with
   twelve authors lists twelve.
3. **All references from all regions and languages.** Russian, Chinese,
   Japanese, German, French and any other language are cited on the same
   footing as English.
4. **State every translation.** A quotation from a source not in English goes
   through `\translated{English}{original}{language}`, which prints the
   original in a footnote. A paraphrase of such a source says it is in our
   translation. A bib entry for a work not in English carries
   `language = {...}` and, in `note`, the English title marked as our
   translation.

5. **Simple academic English, mandatory** (owner, 2026-10-03: "a encyclopaedia
   for all humanity and future generations"). Write for readers whose first
   language is not English. Short sentences, one idea each, no sentence over
   30 words. Common academic words only: no rare, literary, poetic or
   old-fashioned words. Technical terms are allowed when needed; each one is
   listed in `style/terms.txt` and defined where it first appears. Words to
   avoid, with their plain replacements, are in
   `tools/scripts/encyclopaedia/avoid.txt` (shared by all books and papers).
   Enforced three ways: `tools/scripts/encyclopaedia/check-english.py` (rules 4
   and 5 of `check-rules.sh`, a release gate); the PostToolUse hook
   `simple-english-hook.sh`, which blocks after any chapter write until the
   text passes; and Jev's `plain-english` step
   (`tools/scripts/judge/english-check.sh`, pass mark 0.4 on readability and
   on common words, calibrated on a plain and an ornate control text).
   Quotations and formal statements (theorems, definitions) are judged only
   for accuracy, not for style.
6. **Applications and examples, in the section they serve** (owner,
   2026-10-03; changed 2026-10-12). The subtitle is *Origins and Development,
   with Applications and Worked Examples*. An example sits in the section of the
   notion or theorem it illustrates, right after the definition or the
   statement, so that it hardens the understanding where the idea is met. No
   chapter ends with a section that collects examples. Every example and
   application is taken from a reference and cited (rule 9); a chapter points to
   the applications of its notions in Chapter 20.
7. **A book, told as one story** (owner, 2026-10-05: "it is too mechanical
   with a lot of sub sub sub sections disconnected. Use a better narration
   for mathematical books ... this is a book"). Each chapter is a narrative,
   not a stack of notes. Sections come in the order of the story, which is
   usually the order of the ideas. A chapter has sections only; no
   `\subsection`, `\subsubsection` or run-in `\paragraph` headings such as
   "The problem." or "In present terms.". Each section opens by linking to
   the one before and ends by leading into the next. Inside a section, each
   paragraph opens with a sentence that ties it to the last one. Lists are
   used only for real lists (the cases of a theorem, a set of examples), and
   never to replace an argument. Checked by
   `tools/scripts/encyclopaedia/check-rules.sh` (rule 7: no subsection or
   paragraph headings in chapter files).

8. **Balanced and professional, like a Springer mathematics book** (owner,
   2026-10-12, mandatory). The encyclopaedia reads like a graduate monograph in the
   Springer GTM or Universitext series. Every chapter has the same anatomy: an
   opening that states the problem and the plan of the chapter, sections in
   the order of the story with its examples in place, a closing that points to the
   next chapter and to Chapter 20. Chapters are balanced in depth and length.
   A finished chapter is not below half and not above twice the median length
   of the finished chapters, and no part is a stub while its neighbours are
   full. Notation is the same across chapters (one symbol, one meaning), a
   theorem is stated once with its source and then referred to by number, and
   the register is that of a published monograph: no notes, no lists of
   papers, no informal asides. A chapter that is long because it lists
   results is rewritten as a narrative that selects. Checked mechanically by
   rule 8 of `tools/scripts/encyclopaedia/check-rules.sh` (length balance of
   finished chapters); the rest is judged at review
   (`adversarial-book-reviewer`).

9. **Everything comes from references** (owner, 2026-10-12, mandatory, the core
   rule of the project). No notion, definition, result, application or example is
   invented. Each one is taken from a source and cited with its page or numbered
   item; a hand computation of the author is an invented example. A source that
   cannot be downloaded goes to the atlas (`tools/scripts/encyclopaedia/atlas-pending.sh`)
   and the passage waits. Checked by `.claude/skills/sourced-content/check-sourced.py`
   (edit hook and release gate); see `.claude/skills/sourced-content/SKILL.md`.

`tools/scripts/encyclopaedia/check-rules.sh paper/maths/derivations-encyclopaedia`
checks rules 1 to 5, 7 and 8 and is one of the release gates.

## Order of work: breadth before depth (owner, 2026-10-21)

The owner observed that work drifted to the Jordan and Lie kinds only. Chapter
work now rotates over the groups of kinds listed in Section 2.7: a new target,
a twisted factor, a new product, maps built from derivations, a condition at each
point, kinds named in the atlas titles, and other settings. Before a session
starts a chapter, it names the last chapter written in each group and picks the
group that has waited longest. Section 2.7 is the list of record.

The list of kinds comes from the papers: `ledger/encyclopaedia-kinds.tsv` is made by `tools/scripts/mine-kinds.py` on `data/atlas.tsv` (rule in `math-lit-search`) and is rerun at every monthly update.

## How each chapter is written

1. **Motivation first** (owner, 2026-10-03). Every chapter and every
   section opens with the problem the notion was introduced to solve: who
   faced it, when, what they tried, and why the existing tools failed, quoted
   from the founding source (original first, then our translation). The
   problem is told in prose, with no run-in heading. A section that starts
   with a definition is not finished.
2. **Definitions** as in the founding source, then in modern form.
3. **Theorems as stated in their sources**: the exact hypotheses and
   conclusion, with the source and page. A statement is only written after
   that source (or its zbMATH review, marked as such) has been read.
4. **Counterexamples**: where each implication fails.
5. **Question table**: for each question family and class of algebra, known,
   false with a counterexample, or open (feeds Appendix B).
6. **Open problems**: each becomes an idea issue.

Gates for each chapter release: build, `check-rules.sh`, plain prose under 1.0 per 1000 words,
style-provenance check, Jev's `notion-check.sh`, and a citation audit
(every cited work exists in papergraph with the cited page).

## Order of work and releases

The order follows dependency (later chapters lean on the history and the
basic theory) and the density of the literature.

| Release | Content |
|---|---|
| v0.1 | skeleton: structure, atlas baseline, monthly update (done) |
| v0.2 | book design: cover, title pages, imprint, contents and lists, index, figures folders, style (done) |
| v0.3 | Ch. 1 Origins complete: sections 00 to 10, including the crossed-homomorphism line (§8) and the sources in `ledger/manual-downloads.md`; Appendix A Atlas tables from `data/atlas.tsv` |
| v0.4 | Ch. 1 told as one story (done) |
| v0.5 | Ch. 2 Basic theory, family tree, the question families; §3 joins the inner, principal and crossed-homomorphism vocabularies |
| v0.6 | Ch. 3 Prime and semiprime rings |
| v0.7 | revision of Chapters 1 to 3: examples in place, more kinds in Section 2.7, Ihara 2012 in Section 2.4 |
| v0.8 | Ch. 4 Jordan-type and Ch. 5 Lie-type maps |
| v0.9 | Ch. 6 Generalized and twisted; Ch. 9 Functional identities |
| v0.10 | Ch. 7 Higher and multi; Ch. 8 Local maps |
| v0.11 | Part III, concrete classes (Ch. 10 to 13, with §13.4 crossed products) |
| v0.12 | Part IV, nonassociative (Ch. 14, 15) and other systems (Ch. 22) |
| v0.13 | Part V, commutative and differential (Ch. 16, 17) |
| v0.14 | Part VI and VII, analysis and cohomology (Ch. 18, 19, with §19.5 group cohomology) |
| v1.0 | Ch. 20 Applications, Ch. 21 Open problems, Appendix B question tables, full gates |

Each release: a GitHub release with the PDF and `data/atlas.tsv`, a Drive
upload, and the version line in `ledger/projects/derivations-encyclopaedia/state.md`.
A release follows every finished chapter (owner, 2026-10-12: "after each
chapter you complete release the book"): when the last section of a chapter
is written and its gates pass, the next version is released before the next
chapter starts.
A release of this book carries no references zip (owner, 2026-10-12). The
releases of papers attach `<slug>-vN-references.zip`; the encyclopaedia does not,
and `release-gate-hook.sh` exempts it.

## Monthly update

`tools/scripts/encyclopaedia/monthly-update.sh paper/maths/derivations-encyclopaedia`
runs on the first day of each month (`tools/systemd/encyclopaedia-monthly.timer`):

1. refetches every zbMATH document with a harvested MSC code;
2. rewrites `data/atlas.tsv` and files each paper under its chapters;
3. writes `updates/YYYY-MM.md`, the new papers grouped by chapter;
4. opens an issue with the counts.

A person (or a session) then reads the new papers of each chapter and adds the
ones that change a statement, a table entry or an open problem. New chapters go
at the end of their part in `structure.txt`; chapter numbers never change.

Release order against breadth (2026-10-21): the release table above keeps the chapter order
of dependency. Each release also takes one new section from every group of Section 2.7 that
has no written section yet, so that no group waits for its chapter. The audit of this plan is
`ledger/projects/derivations-encyclopaedia/plan-audit.md`.
