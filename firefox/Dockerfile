FROM ubuntu:21.04

ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN echo -e "XKBMODEL='pc105'\nXKBLAYOUT='us'\nXKBVARIANT='intl'\nXKBOPTIONS=''" > /etc/default/keyboard

RUN apt-get update && apt-get install -y sudo bash bzip2 xz-utils wget tar apt-transport-https curl >> /dev/null

RUN mkdir /home/fgm && \
    groupadd fgm && \
    useradd -d /home/fgm -s /bin/bash -g fgm fgm && \
    echo "fgm ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/fgm && \
    chmod 0440 /etc/sudoers.d/fgm && \
    chown fgm:fgm -R /home/fgm

# install firefox 
RUN apt-get install -y firefox >> /dev/null

# remove trash files
RUN rm -rf /var/cache/* && \
    rm -rf /usr/share/man/*  && \
    rm -rf /tmp/*

USER fgm
ENV HOME /home/fgm
CMD firefox