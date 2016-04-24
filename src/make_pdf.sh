#!/bin/bash
filename=example

# Run the compilation
pdflatex ./${filename}.tex
bibtex ./${filename}
makeglossaries ./${filename}
pdflatex ./${filename}

# Remove files formed as a result of compilation
rm ${filename}.aux
rm ${filename}.bbl
rm ${filename}.blg
rm ${filename}-blx.bib
rm ${filename}.glo
rm ${filename}.glsdefs
rm ${filename}.lof
rm ${filename}.lot
rm ${filename}.run.xml
rm ${filename}.toc
rm ${filename}.xdy
rm ./texput.log
