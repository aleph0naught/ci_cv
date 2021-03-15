#!/bin/sh -l

cd Resume
pdflatex main.tex
if [ -f "./main.pdf" ]; then
    echo "OK"
else
    echo "CE"
fi