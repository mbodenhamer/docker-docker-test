[![](https://travis-ci.org/mbodenhamer/docker-docker-test.svg?branch=master)](https://travis-ci.org/mbodenhamer/docker-docker-test)

Docker image for testing Docker images.

Based on the official Docker image, has [bats](https://github.com/sstephenson/bats) installed, and runs `make test` by default. Invoke like so:

    $ docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock \
	      -v $(pwd):/app mbodenhamer/docker-test

Tags
----

The `latest` tag is an image with Docker version `1.12.1` installed. Specific `docker` versions are available via the following tags:

* [`1.12.1`](https://github.com/mbodenhamer/docker-docker-test/tree/1.12.1) ![](https://travis-ci.org/mbodenhamer/docker-docker-test.svg?branch=1.12.1)
* [`1.9.1`](https://github.com/mbodenhamer/docker-docker-test/tree/1.9.1) ![](https://travis-ci.org/mbodenhamer/docker-docker-test.svg?branch=1.9.1)
* [`1.7.1`](https://github.com/mbodenhamer/docker-docker-test/tree/1.7.1) ![](https://travis-ci.org/mbodenhamer/docker-docker-test.svg?branch=1.7.1)
