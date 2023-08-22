#!/bin/bash
# locate latex.hsnips at script directory
workspaceFolder=$(readlink -f $(dirname $(dirname $0)))
file='latex.hsnips'
if [ ! -f ${workspaceFolder}/.vscode/${file} ]; then
    wget -P ./.vscode https://raw.githubusercontent.com/Shena4746/latex-snippets-for-vscode/main/.vscode/${file}
fi