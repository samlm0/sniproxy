FROM alpine:edge
RUN apk add --no-cache sniproxy
ADD sniproxy.conf /sniproxy.conf

EXPOSE 80/tcp
EXPOSE 443/tcp

ENTRYPOINT ["/usr/sbin/sniproxy", "-f", "-c", "/sniproxy.conf"]
