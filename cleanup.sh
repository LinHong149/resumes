#!/bin/bash

# Cleanup script for LaTeX auxiliary files
# Removes compilation artifacts while keeping .tex and .pdf files

echo "Cleaning LaTeX auxiliary files..."

# Remove common LaTeX auxiliary files
rm -f *.aux
rm -f *.log
rm -f *.out
rm -f *.synctex.gz
rm -f *.fdb_latexmk
rm -f *.fls
rm -f *.toc
rm -f *.lof
rm -f *.lot
rm -f *.bbl
rm -f *.blg
rm -f *.bcf
rm -f *.run.xml

echo "Cleanup complete! Auxiliary files removed."
echo "Note: .tex and .pdf files are preserved."

