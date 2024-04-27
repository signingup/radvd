FROM alpine

RUN apk add --no-cache radvd
RUN mkdir -p /run/radvd/
ENTRYPOINT ["/usr/sbin/radvd", "--nodaemon", "-C", "/etc/radvd/radvd.conf"]
