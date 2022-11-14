.PHONY: help serve update

CONTAINER_TOOL ?= docker

.DEFAULT: help
help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##/\n\t/'

serve:	## Build the kanidmd docker image locally
serve:
	echo "Running in $(CONTAINER_TOOL) on port 4000"
	@$(CONTAINER_TOOL) run --rm --name kanidm-site \
		--mount type=bind,source="$${PWD}",target=/srv/jekyll \
		--publish 4000:4000 \
		jekyll/jekyll \
		jekyll serve

update:	## update the gems in the container
update:
	@$(CONTAINER_TOOL) run --rm  --name kanidm-site-updater \
		--mount type=bind,source="$${PWD}",target=/srv/jekyll \
		jekyll/jekyll \
		bundle update
