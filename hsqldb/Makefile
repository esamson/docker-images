HSQLDB = hsqldb-2.3.2.zip
TAG = esamson/hsqldb

build: deps
	sudo docker build --tag="$(TAG)" .
	@echo Built $(TAG)

deps: .deps/hsqldb
	@echo Dependencies are in .deps/
	
.deps/hsqldb: .deps/$(HSQLDB)
ifeq ("$(wildcard .deps/hsqldb-2.3.2)", "")
	unzip .deps/$(HSQLDB) -d .deps
endif

.deps/$(HSQLDB): .deps
ifeq ("$(wildcard .deps/$(HSQLDB))", "")
	$(info $(HSQLDB) needs to be downloaded manually and added to .deps/)
	$(info Download from http://sourceforge.net/project/showfiles.php?group_id=23316)
	$(error .deps/$(HSQLDB) missing)
endif

.deps:
	@echo Creating .deps/ dir
	mkdir .deps

.PRECIOUS: .deps/$(HSQLDB)
