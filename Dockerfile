FROM ubuntu:latest

ENV VERSION_HUGO=0.93.2

RUN apt-get update && apt-get install -y curl git openssl nodejs

RUN curl -OL https://github.com/gohugoio/hugo/releases/download/v${VERSION_HUGO}/hugo_extended_${VERSION_HUGO}_Linux-64bit.tar.gz && \
    tar -xf hugo_extended_${VERSION_HUGO}_Linux-64bit.tar.gz hugo -C / && \
    mv /hugo /usr/bin/hugo && \
    rm -rf hugo_extended_${VERSION_HUGO}_Linux-64bit.tar.gz

ENTRYPOINT [ "bash", "-c" ]
