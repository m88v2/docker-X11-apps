FROM ubuntu:21.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    echo -e "XKBMODEL='pc105'\nXKBLAYOUT='us'\nXKBVARIANT='intl'\nXKBOPTIONS=''" > /etc/default/keyboard

RUN apt-get update && \
    apt-get install -y wget apt-utils gnupg gnupg1 gnupg2 && \
    mkdir /home/user && \
    groupadd user && \
    useradd -d /home/user -s /bin/bash -g user user && \
    chown user:user -R /home/user && \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list
RUN apt-get update && \
    apt-get install -y libvulkan1 google-chrome-stable && \
    rm -rf /var/cache/* && \
    rm -rf /usr/share/man/*  && \
    rm -rf /tmp/* 

USER user
ENV HOME /home/user
CMD google-chrome --disable-setuid-sandbox --no-sandbox