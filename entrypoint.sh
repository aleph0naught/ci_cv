#!/bin/sh -l

cd Resume

pdflatex -interaction=nonstopmode main.tex

if [ -f './main.pdf' ]; then
    echo "OK"
else
    echo "CV Compilation Failed"
    exit 1
fi