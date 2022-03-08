#
# ############################################################################
# Project: M88V2.docker (none)
# File...: tor-server/Dockerfile
# Created: Saturday, 2022/03/05 - 20:35:44
# Author.: Fabrício Matos, (fabricio.matos@live.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Last Modified: Monday, 2022/03/07 - 21:23:02
# Modified By..: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Version: 1.0.1.0
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Description: 
#  >
# ############################################################################
# HISTORY:
#

FROM alpine:latest
LABEL author="Fabrício Matos" 
LABEL mail="fabricio.matos@live.com"
LABEL organization="m88v2"

RUN apk update && \
    apk add tor wget \
        --update-cache \
        --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ && \
    rm -rf /var/cache/apk/* && \
    wget -O /etc/tor/torrc \
        https://raw.githubusercontent.com/sachsenhofer/tor_proxy/master/torrc.default
EXPOSE 9050
USER tor
ENTRYPOINT [ "tor" ]
CMD [ "-f", "/etc/tor/torrc" ]