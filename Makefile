all: test

TEST = docker run --rm -it -v $(CURDIR):/app \
	-v /var/run/docker.sock:/var/run/docker.sock mbodenhamer/docker-test

#-------------------------------------------------------------------------------

quick-test:
	$(TEST) bats tests

test:
	docker build -t mbodenhamer/docker-test:bats .
	$(TEST):bats bats tests

.PHONY: quick-test test
#-------------------------------------------------------------------------------
