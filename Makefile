VERSION=0.1.0
TAG=${VERSION}
IMAGE=shena4746/alpine-texlive-base:${VERSION}

ifeq ($(OS),Windows_NT)
	PWD=$(CURDIR)
endif

# create new container and login to the shell
.PHONY: shell
shell:
	docker run --env IMAGE_VERSION=${VERSION} -it --rm -v ${PWD}:/workdir ${IMAGE}

.PHONY: release
release:
	git tag "v${TAG}"; \
	git push origin "v${TAG}"; \
	gh release create "v${TAG}" -t "v${TAG}" -F CHANGELOG.md

.PHONY: unrelease
unrelease:
	gh release delete -y "v${TAG}"; \
	git tag -d "v${TAG}"; \
	git push origin ":v${TAG}"