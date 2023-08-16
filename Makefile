IMAGE_TAG=0.3.2
IMAGE=shena4746/alpine-texlive-base:${IMAGE_TAG}

ifeq ($(OS),Windows_NT)
	PWD=$(CURDIR)
endif

# create new container and login to the shell
.PHONY: shell
shell:
	docker run --env IMAGE_IMAGE_TAG=${IMAGE_TAG} -it --rm -v ${PWD}:/workdir ${IMAGE}

# git config --global --add safe.directory /workdir/.git
# git-latexdiff HEAD^ --main test.tex --no-view -o /workdir/diff/ --ignore-latex-errors --latexmk --quiet