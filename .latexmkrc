$pdf_mode         = 3;
$latex            = 'platex -no-guess-input-enc -kanji=utf8 -synctex=1 -interaction=nonstopmode';
$bibtex           = 'pbibtex';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';