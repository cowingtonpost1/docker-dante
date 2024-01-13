FROM alpine:3.19
LABEL maintainer="Cowington Post <cowingtonpost@gmail.com>"
LABEL org.opencontainers.image.source="https://github.com/cowingtonpost1/docker-dante"

RUN apk update --no-cache && apk add dante-server
RUN mkdir -p /config

EXPOSE 1080

VOLUME /config

CMD ["/usr/sbin/sockd", "-f", "/config/sockd.conf"]
