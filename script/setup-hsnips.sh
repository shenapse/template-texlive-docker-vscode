#!/bin/bash -eux

# locate latex.hsnips at .vscode directory
workspaceFolder=$(readlink -f $(dirname $(dirname $0)))
file='latex.hsnips'
dir_vscode="${workspaceFolder}/.vscode"

if [ ! -f ${dir_vscode}/${file} ]; then
    wget -P ${dir_vscode} https://raw.githubusercontent.com/Shena4746/latex-snippets-for-vscode/main/.vscode/${file}
fi