#!/bin/sh -l

set -e

ls
pdflatex -interaction=nonstopmode main.tex

if [ -f "./main.pdf" ]; then
    echo "OK"
else
    echo "CE"
fi