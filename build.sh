#!/bin/bash
# file bismon/talks/Lamsade-21nov2019/build.sh
# in http://github.com/bstarynk/bismon/
for svgfile in *.svg ; do
    svgbase=$(basename $svgfile .svg)
    inkscape --batch-process --export-filename=$svgbase.pdf --export-type=pdf $svgfile
    inkscape --batch-process --export-filename=$svgbase.eps  --export-type=eps $svgfile
done
for dotfile in *.dot ; do
    dotbase=$(basename $dotfile .dot)
    dot -v -Teps -o $dotbase.eps  $dotfile
    dot -v -Tpdf -o $dotbase.pdf  $dotfile
    dot -v -Tsvg -o $dotbase.svg  $dotfile
done
lualatex --shell-escape  --halt-on-error intro-programmation-sous-Linux
lualatex --shell-escape  --halt-on-error intro-programmation-sous-Linux
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#% Local Variables: ;;
#% compile-command: "./build.sh" ;;
#% End: ;;
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
