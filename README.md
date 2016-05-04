[![Build Status](https://travis-ci.org/mbodenhamer/docker-docker-test.svg?branch=master)](https://travis-ci.org/mbodenhamer/docker-docker-test)

Docker image for testing Docker images.

Has [bats](https://github.com/sstephenson/bats) installed and runs `make test` by default. Invoke like so:

    $ docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock \
	      -v $(pwd):/app mbodenhamer/docker-test
