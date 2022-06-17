FROM alpine

RUN apk update && \
  apk upgrade && \
  apk add git rsync \
  apk add --no-cache --upgrade bash

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "sh", "/entrypoint.sh" ]
