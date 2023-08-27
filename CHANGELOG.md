# Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

## [0.3.4] - 2023-08-27

### Added

- update docker image to shena4746/alpine-texlive-base:0.3.4. See [Changelog](https://github.com/Shena4746/alpine-texlive-base/releases/tag/v0.3.4) for detail.
- restrict replacement rule of latexindent to minimum domain. add minor replacement rules.  

## [0.3.3] - 2023-08-23

### Changed

- update snippets and commands incorporating those in [my other repository for snippets.](https://github.com/Shena4746/latex-snippets-for-vscode)
- delete and move snippets and commands relating UTF to the above repository.

### Added

- new formatting rule for latexindent: add space around <>, remove spaces before comma and punctuation.

## [0.3.2] - 2023-08-16

### Added

- place user setting file ([.latexindent.yaml](/.latexindent.yaml)) for latexindent
- define "get diff" (LaTeX workshop) recipe using [get-diff.sh](/script/get-diff.sh). it runs latexdiff-vc and produces diff files of the current tex file and HEAD.
- [dump-package-info.sh](/script/dump-package-info.sh) is set to run every time build recipe is called. it should keep track of the latest package info.
- sample keybindings.json

### Changed

- update docker image to shena4746/alpine-texlive-base:0.3.3. See [Changelog](https://github.com/Shena4746/alpine-texlive-base/releases/tag/v0.3.3) for detail.
- organize preset snippets and commands (including experimental utf ones)
- minor tuning for setting.json

## [0.3.1] - 2023-08-02

### Changed

- update docker image from texlive 2022 to 2023
- organize snippets

## [0.3.0] - 2023-01-04

### Added

- switch to the docker shena4746/alpine-texlive-base:0.2.0, which has git
- install gitlens via devcontainer

## [0.2.0] - 2023-01-04

### Added

- bundle a script to install packages via `tlmgr` after container gets started.

### Fix

- explicitly specify path for latexindent and synctex

## [0.1.0] - 2022-12-31

### Changed

- adopt docker image using biblatex & biber. Sample files are now changed to that style accordingly.

## [0.0.1] - 2022-12-31

### Added

- first release
- use docker image shena4746/alpine-texlive-base:0.0.1
- auto fetch `latex.hsnips` by `onCreateCommnad` in `devcontainer.json`.
- enable latexmk, latexindent, synctex, texcount and chktex.
- default build recipe by lualatex via latexmk
