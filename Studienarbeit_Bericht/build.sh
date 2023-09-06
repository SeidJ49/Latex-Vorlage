#!/bin/bash
pdflatex thesis
pdflatex thesis
bibtex thesis
makeindex -g -s index.ist thesis.idx
makeindex -s thesis.ist -t thesis.alg -o thesis.acr thesis.acn
makeindex -s thesis.ist -t thesis.glg -o thesis.gls thesis.glo
makeindex -s thesis.ist -t thesis.slg -o thesis.syi thesis.syg
pdflatex thesis
pdflatex thesis
pdflatex thesis
pdflatex thesis
