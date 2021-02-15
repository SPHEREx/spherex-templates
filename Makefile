.PHONY: init
init:
	rm -rf .tox
	pip install --upgrade tox

.PHONY: test
test:
	tox
