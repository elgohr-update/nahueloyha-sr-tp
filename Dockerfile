# This is a sample Dockerfile with a couple of problems.
# Paste your Dockerfile here.

FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y make nasm && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/hello
copy . /usr/src/hello

RUN make clean hello test

CMD ["./hello"]