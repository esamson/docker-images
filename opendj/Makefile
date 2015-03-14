OPENDJ = OpenDJ-2.6.0.zip
TAG = esamson/opendj

build: deps
	sudo docker build --tag="$(TAG)" .
	@echo Built $(TAG)

deps: .deps/opendj
	@echo Dependencies are in .deps/
	
.deps/opendj: .deps/$(OPENDJ)
ifeq ("$(wildcard .deps/opendj)", "")
	unzip .deps/$(OPENDJ) -d .deps
endif

.deps/$(OPENDJ): .deps
ifeq ("$(wildcard .deps/$(OPENDJ))", "")
	$(info OpenDJ-2.6.0.zip needs to be downloaded manually and added to .deps/)
	$(info Download from https://backstage.forgerock.com/#!/downloads/OpenDJ)
	$(error .deps/OpenDJ-2.6.0.zip missing)
endif

.deps:
	@echo Creating .deps/ dir
	mkdir .deps

.PRECIOUS: .deps/$(OPENDJ)
