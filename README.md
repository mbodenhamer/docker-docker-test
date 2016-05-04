[![Build Status](https://travis-ci.org/mbodenhamer/docker-docker-test.svg?branch=master)]

Docker image for testing Docker images.

Has [bats](https://github.com/sstephenson/bats) installed and runs `make test` by default. Invoke like so:

    $ docker run --rm -it -v $(pwd):/app mbodenhamer/docker-test


