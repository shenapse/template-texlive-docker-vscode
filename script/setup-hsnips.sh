#!/bin/sh
# locate latex.hsnips at script directory
file='latex.hsnips'
if [ ! -f ./.vscode/${file} ]; then
    wget -P ./.vscode https://raw.githubusercontent.com/Shena4746/LaTeX-Snippets-for-VSCode/main/${file}
fi