#!/bin/sh -l

cd Resume

pdflatex -interaction=nonstopmode main.tex

COMPILE_STATUS=$?
if [ $COMPILE_STATUS -ne 0 ]; then
    echo "CV compilation failed"
    exit $COMPILE_STATUS
fi