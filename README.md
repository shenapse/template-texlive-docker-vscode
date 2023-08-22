# A Template for Docker + TeXLive + VSCode + Remote-Container + LaTeX-Workshop

## Summary

- A TeXLive environment ready to use with VSCode Remote-Container
- Pre-configured tools for editors such as latexindent, synctex, chktex and lacheck
- A ready-made build recipe with latexmk + lualatex
- A ready-made recipe to get diff of the current tex file using latexdiff-vc
- Various snippets that extends LaTeX Workshop ones
- A Tex template using docmute package
- script that keeps track of package info

## Install

git clone this repository.
(re-)open the repo's workspace by VSCode Remote-Container extension (`VSCode: command palette` -> `(Dev Container/Remote Container): Reopen in Container`).
Then docker image specified in `.devcontainer/docker-compose.yml` will be automatically pulled and then build process will begin.

## Usage

### Compile tex source

A build recipe for LaTeX-Workshop Extension is defined in `settings.json`.
Just run `VSCode: command palette` -> `LaTeX Workshop: Build with recipe`.
It compiles the current tex file and outputs pdf in `./out`. The default engine is LuaLaTex.

### Tools for editor

#### Formatter: latexindent

`VSCode: command palette` -> `Format Document` runs latexindent.
In default, the settings for `"editor.formatOnSave"`, and `"editor.formatOnPaste"` are both set to `false`.

A user-setting file for latexindent `.latexindent.yaml` is in the workspace, which is set to be in a search path of latexindent as specified in `/root/.indentconfig.yaml`. The default setting file for latexindent, which should not be modified, is available via `latexindent -vv`.

#### Linter: chktex and lacheck

Both chktex and lacheck are enabled by default, and set to run on save as specified by `"latex-workshop.linting.run": "onSave"`.
A user-setting file for chktex `.chktexrc` is also in the workspace.
The default setting file, which should not be modified, is available at `/usr/local/texlive/2023/texmf-dist/chktex/chktexrc`.

### Get diff file using latexdiff-vc

The recipe for this task is also defined in `settings.json`.
It runs [get-diff.sh][get-diff.sh], which by default produces diff tex file of current and HEAD, and builds the resulting diff tex to output pdf.

### Install more packages

Write `tlmgr install packages-you-need` in [post-install.sh][post-install.sh], which is set to run every time Remote-Container is started (see `.devcontainer/devcontainer.json`).

### Misc

[dump-package-info.sh][dump-package.sh] is executed immediately after each build recipe is successfully completed.
It ensures that its output [installed-packages.txt][installed-packages] keeps the package info at the time of latest successful build.

## Notes

- About Docker image
  - `.devcontainer/docker-compose.yml` defines the docker image this repo uses. Another image can be set here if you are willing to go to the trouble of re-settling the path set in `settings.json`. In that case, don't forget to set `/your-new-home/.indentconfig.yaml`. Scripts in `./scripts` are path-independent but are directory-structure-dependent.
- About Snippets
  - "dynamic" snippets defined in [latex.hsnips][my-hsnips-file] depends on [Hypersnips Extension][hsnips-ext].
  - `./script-hsnips.sh` fetches `latex.hsnips` from [my other repository][my-hsnips-repo] when container is first created, using `onCreateCommand` in `.devcontainer/devcontainer.json`.

[my-hsnips-repo]:https://github.com/Shena4746/latex-snippets-for-vscode
[my-hsnips-file]:./.vscode/latex.hsnips
[hsnips-ext]:https://marketplace.visualstudio.com/items?itemName=draivin.hsnips
[get-diff.sh]:./script/get-diff.sh
[post-install.sh]:./script/post-install.sh
[dump-package.sh]:./script/dump-package-info.sh
[installed-packages]:./installed-packages.txt
