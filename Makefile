.PHONY: help
help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

ANSIBLE_VIRTUALENV ?= .venv
ANSIBLE_PYTHON := $(ANSIBLE_VIRTUALENV)/bin/python3
ANSIBLE_PIP := $(ANSIBLE_PYTHON) -m pip

$(ANSIBLE_VIRTUALENV):
	python3 -m venv $(ANSIBLE_VIRTUALENV)
	$(ANSIBLE_PIP) install -U pip setuptools wheel

.PHONY: virtualenv
virtualenv: $(ANSIBLE_VIRTUALENV) ## Create local environment

.PHONY: clean
clean: ## Remove cache
	rm -rf $(ANSIBLE_VIRTUALENV) build dist *.egg-info
