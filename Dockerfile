FROM alpine:edge
RUN apk add --no-cache sniproxy
ADD sniproxy.conf /sniproxy.conf
CMD ['/usr/sbin/sniproxy', '-c', '/sniproxy.conf']
