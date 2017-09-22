FROM alpine:3.6

MAINTAINER Julien Maitrehenry <jmaitrehenry@petalmd.com>
ARG ANSIBLE_VERSION=1.9.4

RUN apk add --update --no-cache python py-pip openssl ca-certificates rsync build-base python-dev libffi-dev openssl-dev && \
    pip install ansible==$ANSIBLE_VERSION && \
    apk del build-base python-dev libffi-dev openssl-dev

CMD [ "ansible-playbook", "--version" ]
