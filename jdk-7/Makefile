JDK = jdk-7u75-linux-x64.tar.gz
TAG = esamson/jdk:7

build: deps
	sudo docker build --pull --tag="$(TAG)" .
	@echo Built $(TAG)

deps: .deps/$(JDK)
	@echo Dependencies are in .deps/

.deps/$(JDK): .deps
ifeq ("$(wildcard .deps/$(JDK))", "")
	$(info Downloading JDK 7)
	wget -P .deps/ --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u75-b13/$(JDK)
endif

.deps:
	@echo Creating .deps/ dir
	mkdir .deps

.PRECIOUS: .deps/$(JDK)
