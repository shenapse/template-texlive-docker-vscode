# Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

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
