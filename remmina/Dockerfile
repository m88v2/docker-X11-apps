#
# ############################################################################
# Project: docker-X11-apps (none)
# File...: remmina/Dockerfile
# Created: Thursday, 2023/01/26 - 19:26:30
# Author.: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Last Modified: Thursday, 2023/01/26 - 20:24:39
# Modified By..: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Version: 0.0.1.22
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Description: 
#  >
# ############################################################################
# HISTORY:
#
FROM ubuntu:22.04

ENV TZ=America/Sao_Paulo
ARG DEBIAN_FRONTEND=noninteractive
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install qutebrowser
RUN apt-get update && \
    apt-get install -y \
        remmina remmina-plugin-rdp remmina-plugin-secret && \
    mkdir -p /home/user && \
    groupadd user && \
    useradd -d /home/user -s /bin/bash -g user user && \
    chown user:user -R /home/user
    # echo "user ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/user && \
    # chmod 0440 /etc/sudoers.d/user && \

# remove trash files
RUN rm -rf /var/cache/* && \
    rm -rf /usr/share/man/*  && \
    rm -rf /tmp/*

USER user
ENV HOME /home/user
CMD remmina