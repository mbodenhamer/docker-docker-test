FROM docker:1.7.1
MAINTAINER Matt Bodenhamer <mbodenhamer@mbodenhamer.com>

# Install dependencies
RUN apk update && apk add \
    bash \
    git \
    make \
    && rm -rf /var/cache/apk/*

# Install bats
RUN git clone https://github.com/sstephenson/bats.git \
    && bats/install.sh /usr/local \
    && rm -rf bats

VOLUME /app
WORKDIR /app

CMD ["make", "test"]
