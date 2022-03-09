FROM ubuntu:21.04

ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    echo -e "XKBMODEL='pc105'\nXKBLAYOUT='us'\nXKBVARIANT='intl'\nXKBOPTIONS=''" > /etc/default/keyboard

RUN apt-get update && \
    apt-get install -y wget && \
    mkdir /home/user && \
    groupadd user && \
    useradd -d /home/user -s /bin/sh -g user user && \
    chown user:user -R /home/user && \
    apt-get install -y gnupg gnupg2 gnupg1 && \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list && \
    apt-get update && \
    apt-get install -y google-chrome-stable && \
    rm -rf /var/cache/* && \
    rm -rf /usr/share/man/*  && \
    rm -rf /tmp/* && \
    apt-get purge -y wget gnupg gnupg2 gnupg1

USER user
ENV HOME /home/user
CMD google-chrome-stable --disable-setuid-sandbox --no-sandbox