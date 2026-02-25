$pdf_mode = 1;

# Compile with XeLaTeX for fontspec support (Lexend / Inter fonts).
$pdflatex = 'xelatex -interaction=nonstopmode -synctex=1 %O %S';
$latex    = $pdflatex;
