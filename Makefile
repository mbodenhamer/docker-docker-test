all: test

VERSION = 17.05
TEST = docker run --rm -it -v $(CURDIR):/app \
	-v /var/run/docker.sock:/var/run/docker.sock \
	mbodenhamer/docker-test:$(VERSION)

#-------------------------------------------------------------------------------

build:
	docker build -t mbodenhamer/docker-test:$(VERSION) .

.PHONY: build
#-------------------------------------------------------------------------------

quick-test:
	$(TEST) bats tests

test:
	$(MAKE) build
	$(MAKE) quick-test

.PHONY: quick-test test
#-------------------------------------------------------------------------------
