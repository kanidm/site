.PHONY: help serve update

MARKDOWN_FORMAT_ARGS ?= --options-line-width=100
CONTAINER_TOOL ?= docker

.DEFAULT: help
help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##/\n\t/'

.PHONY: serve
serve: ## Use zola in "serve" mode
serve:
	zola serve

.PHONY: codespell
codespell: ## Spell check things
codespell:
	find . -not -path './themes/*' -name '*.md' -exec codespell "{}" \;

.PHONY: deno/check
deno/check: ## Check the deno lints
	deno fmt --check --ignore=themes/juice/ --line-width=120

.PHONY: deno/apply
deno/apply: ## Apply the deno suggestions
	deno fmt --ignore=themes/juice/ --line-width=120

.PHONY: check
check: ## Lint the things
check: codespell deno/check
	zola check

.PHONY: serve
serve: ## Serve the site
	zola serve