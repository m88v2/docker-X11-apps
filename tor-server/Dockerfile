FROM alpine:latest
MAINTAINER Fabrício Matos "fabricio.matos@live.com"

RUN apk update && apk add \
    tor wget \
    --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
    && rm -rf /var/cache/apk/*
RUN cd /etc/tor
# COPY torrc.default /etc/tor/torrc.default
RUN wget https://raw.githubusercontent.com/sachsenhofer/tor_proxy/master/torrc.default
EXPOSE 9050
RUN chown -R tor /etc/tor
USER tor
ENTRYPOINT [ "tor" ]
CMD [ "-f", "/etc/tor/torrc.default" ]