$lualatex = 'lualatex %O -shell-escape -file-line-error -synctex=1 -interaction=nonstopmode -halt-on-error %S';
$biber = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$pdf_mode = 1;