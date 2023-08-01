# Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

## [0.3.0] - 2023-01-04

### Changed

- update docker image from texlive 2022 to 2023

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
