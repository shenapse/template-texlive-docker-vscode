# A Template for Docker + TeXLive + VSCode + Remote-Container + LaTeX-Workshop

## Summary

- A TeXLive environment ready to use with VSCode Remote-Container
- A ready-made build recipe with latexmk + lualatex
- Pre-configured tools for editors such as latexindent, synctex and chktex
- Various snippets that extends LaTeX Workshop ones
- A Tex template using docmute package

## Usage

- git clone this repository
- (re-)open the repo's workspace by VSCode Remote-Container extension
  - VSCode: command palette -> (Dev Container/Remote Container): Reopen in Container
- edit source files in `./tex`
- build with recipe and get pdf in `./out`
  - VSCode: command palette -> LaTeX Workshop: Build with recipe

## Notes

- About Docker image
  - `.devcontainer/docker-compose.yml` defines the docker image this repo uses.
  - if you need more packages than the image provides, you may want to extend the image or write a script to install the packages. (see `.devcontainer/devcontainer.json`)
- About snippets
  - this repository uses two different types of snippets: static and dynamic ones.
  - static:
    - those provided by LaTeX Workshop extension
    - those defined in `./.vscode/latex.code-snippets` whose usage is available at [Snippets in Visual Studio Code](https://code.visualstudio.com/docs/editor/userdefinedsnippets).
  - dynamic:
    - `./.vscode/latex.hsnips` defines it.
    - see [Hypersnips Extension](https://marketplace.visualstudio.com/items?itemName=draivin.hsnips) for detail.
    - `./script-hsnips.sh` fetches `latex.hsnips` from my other repository when container is first created, using `onCreateCommand` in `.devcontainer/devcontainer.json`
