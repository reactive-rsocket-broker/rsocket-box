FROM ubuntu:hirsute

MAINTAINER "linux_china <libing.chen@gmail.com>"

WORKDIR /root
USER root

RUN apt-get update && apt-get install -y bash curl jq

RUN curl -L https://github.com/making/rsc/releases/download/0.9.0/rsc-x86_64-pc-linux -o /usr/local/bin/rsc && chmod u+x /usr/local/bin/rsc

RUN curl -L https://github.com/casey/just/releases/download/v0.9.0/just-v0.9.0-x86_64-unknown-linux-musl.tar.gz  | tar xz --directory=/usr/local/bin/

COPY scripts/justfile /root/justfile
COPY scripts/justfile /root/justfile

COPY .profile $WORKDIR

ENTRYPOINT ["bash", "-l"]
