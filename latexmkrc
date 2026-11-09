# Encyclopaedia of Derivations.
$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -halt-on-error %O %S';
$bibtex_use = 2;
@default_files = ('derivations-encyclopaedia.tex');
$out_dir = 'build';
$jobname = 'derivations-encyclopaedia-v0.19';
# Year labels [YEAR-n] and year groups of the bibliography (build/bib-*.tex).
system('bash', 'scripts/bib-labels.sh', '.') == 0
  or die "bib-labels.sh failed\n";
