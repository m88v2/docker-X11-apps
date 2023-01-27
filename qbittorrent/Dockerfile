#
# ############################################################################
# Project: docker-X11-apps (none)
# File...: qbittorrent/Dockerfile
# Created: Thursday, 2023/01/26 - 20:40:47
# Author.: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Last Modified: Thursday, 2023/01/26 - 21:26:49
# Modified By..: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Version: 0.0.1.17
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Description: 
#  >
# ############################################################################
# HISTORY:
#

FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt install software-properties-common -y && \
    add-apt-repository ppa:qbittorrent-team/qbittorrent-stable && \
    apt update && \
    apt install -y qbittorrent

RUN mkdir /home/user && \
    groupadd user && \
    useradd -d /home/user -s /bin/bash -g user user && \
    chown user:user -R /home/user

RUN rm -rf /var/cache/* && \
    rm -rf /usr/share/man/*  && \
    rm -rf /tmp/* 
USER user    
ENV HOME /home/user
CMD qbittorrent