FROM alpine:3.6

MAINTAINER Julien Maitrehenry <jmaitrehenry@petalmd.com>
ARG ANSIBLE_VERSION=2.4.0.0

RUN apk add --update --no-cache python py-pip openssl ca-certificates rsync openssh build-base python-dev libffi-dev openssl-dev && \
    pip install ansible==$ANSIBLE_VERSION && \
    apk del build-base python-dev libffi-dev openssl-dev

CMD [ "ansible-playbook", "--version" ]
