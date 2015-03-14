help:
	@echo Usage: make IMG [IMG ...]
	@echo
	@echo Build the specified docker images.
	@echo
	@echo Images:
	@echo
	@find . -mindepth 1 -maxdepth 1 -type d -not -name '.*' -exec basename {} \; | sed "s/^/\t/"
	@echo

jdk-7:
	$(MAKE) -C jdk-7

opendj:
	$(MAKE) -C opendj

hsqldb:
	$(MAKE) -C hsqldb

.PHONY: help jdk-7 opendj hsqldb
