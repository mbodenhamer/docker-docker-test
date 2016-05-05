all: test

TEST = docker run --rm -it -v $(CURDIR):/app \
	-v /var/run/docker.sock:/var/run/docker.sock mbodenhamer/docker-test

#-------------------------------------------------------------------------------

build:
	docker build -t mbodenhamer/docker-test:latest .

.PHONY: build
#-------------------------------------------------------------------------------

test-build:
	docker build -t mbodenhamer/docker-test:bats .

quick-test:
	$(TEST):bats bats tests

test:
	$(MAKE) test-build
	$(MAKE) quick-test

.PHONY: test-build quick-test test
#-------------------------------------------------------------------------------
