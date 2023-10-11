.PHONY: help serve update

MARKDOWN_FORMAT_ARGS ?= --options-line-width=100
CONTAINER_TOOL ?= docker

.DEFAULT: help
help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##/\n\t/'
