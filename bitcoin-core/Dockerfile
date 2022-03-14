#
# ############################################################################
# Project: docker-X11-apps (none)
# File...: bitcoin-core/Dockerfile
# Created: Wednesday, 2022/03/14 - 00:05:13
# Author.: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Last Modified: Monday, 2022/03/14 - 12:59:42
# Modified By..: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Version: 0.0.1.140
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Description: 
#  >
# ############################################################################
# HISTORY:
#
FROM ubuntu:20.04

# get btc and install
RUN apt-get update && \
  apt-get install -y wget && \
  wget https://bitcoin.org/bin/bitcoin-core-22.0/bitcoin-22.0-x86_64-linux-gnu.tar.gz && \
  tar -xzf bitcoin-22.0-x86_64-linux-gnu.tar.gz && \
  install -m 0755 -o root -g root -t /usr/local/bin bitcoin-22.0/bin/* && \
# install btc requirements
    apt-get install -y libfontconfig1  libxcb-composite0  libxkbcommon-x11-0 && \
# create user
    mkdir /home/user && \
    groupadd user && \
    useradd -d /home/user -s /bin/bash -g user user && \
    chown user:user -R /home/user && \
# remove files
    rm -rf /var/cache/* && \
    rm -rf /usr/share/man/*  && \
    rm -rf /tmp/* && \
    rm -f /bitcoin-22.0-x86_64-linux-gnu.tar.gz && \
    rm -rf bitcoin-22.0
    
USER user    
ENV HOME /home/user
CMD /usr/local/bin/bitcoin-qt