#!/bin/bash
# Auto-build script for Calculus LaTeX (1B + 2B)

cd "$(dirname "$0")"

echo "Building PDF..."
xelatex -interaction=nonstopmode main.tex > /dev/null 2>&1
xelatex -interaction=nonstopmode main.tex > /dev/null 2>&1

if [ -f main.pdf ]; then
    cp main.pdf docs/assets/calculus1B.pdf
    echo "✓ PDF built and copied to docs/assets/calculus1B.pdf"
    echo "  Pages: $(pdfinfo main.pdf 2>/dev/null | grep Pages | awk '{print $2}')"
else
    echo "✗ Build failed"
    exit 1
fi
