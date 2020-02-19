#!/bin/bash

function ltx()
{
	pdflatex -interaction=nonstopmode -halt-on-error $1
	pdflatex -interaction=nonstopmode -halt-on-error $1
}

export -f ltx

echo "Generate PDF with LaTeX:"
cd tex
find . -name "*.tex" -exec bash -c 'ltx "$0"' '{}' \;

cd ..
echo "Copy PDF files into out directory:"
mkdir out
cp tex/*.pdf out/

echo "List of generated PDFs:"

ls out/*.pdf

