#!/bin/sh -l

set -e

cd Resume
pdflatex -interaction=nonstopmode main.tex

if [ -f "./main.pdf" ]; then
    echo "OK"
else
    echo "CE"
fi