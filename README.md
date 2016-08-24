[![](https://travis-ci.org/mbodenhamer/docker-docker-test.svg?branch=1.12.1)](https://travis-ci.org/mbodenhamer/docker-docker-test)

Docker image for testing Docker images.

Based on the official Docker image, has [bats](https://github.com/sstephenson/bats) installed, and runs `make test` by default. Invoke like so:

    $ docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock \
	      -v $(pwd):/app mbodenhamer/docker-test:1.12.1

