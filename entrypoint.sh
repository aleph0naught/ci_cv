#!/bin/sh -l

cd Resume

pdflatex -interaction=nonstopmode main.tex

ERROR_CODE=$?
if [ $ERROR_CODE -eq 0 ]; then
    echo "OK"
else
    echo "CV Compilation Failed"
    exit 1
fi
# if [ -f './main.pdf' ]; then
#     echo "OK"
# else
#     echo "CV Compilation Failed"
#     exit 1
# fi