FROM docker:17.07.0
MAINTAINER Matt Bodenhamer <mbodenhamer@mbodenhamer.com>

# Install dependencies
RUN apk add --no-cache \
    bash \
    git \
    make 

# Install bats
RUN git clone https://github.com/sstephenson/bats.git \
    && bats/install.sh /usr/local \
    && rm -rf bats

VOLUME /app
WORKDIR /app

CMD ["make", "test"]
