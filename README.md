[![](https://travis-ci.org/mbodenhamer/docker-docker-test.svg?branch=1.9.1)](https://travis-ci.org/mbodenhamer/docker-docker-test)

Docker image for testing Docker images.

Includes the `docker` client, has [bats](https://github.com/sstephenson/bats) installed, and runs `make test` by default. Invoke like so:

    $ docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock \
	      -v $(pwd):/app mbodenhamer/docker-test

Tags
----

The `latest` tag is an image with Docker version `1.7.1` installed. This is the latest version of which an official `docker` image exists which can be currently (at the time of writing) run on [Travis-CI](https://travis-ci.org/) without needing any pre-install configuration.

Other `docker` versions are available via the following tags:

* [`1.9.1`](https://github.com/mbodenhamer/docker-docker-test/tree/1.9.1)

