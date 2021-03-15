#!/bin/sh -l

cd Resume
pdflatex -interaction=nonstopmode main.tex
if [ -f "./main.pdf" ]; then
    echo "OK"
else
    echo "CE"
fi