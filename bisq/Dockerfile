FROM ubuntu:21.04

ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    echo -e "XKBMODEL='pc105'\nXKBLAYOUT='us'\nXKBVARIANT='intl'\nXKBOPTIONS=''" > /etc/default/keyboard

RUN mkdir /home/user && \
    groupadd user && \
    useradd -d /home/user -s /bin/sh -g user user && \
    chown user:user -R /home/user && \
    mkdir /usr/share/desktop-directories/

RUN apt-get update && \
    apt-get install -y apt-utils wget libjavafxsvg-java \
    libasound2 libbsd0 libx11-6 libxau6 libxcb1 \
    libxdmcp6 libxext6 libxi6 libxrender1 libxtst6 xdg-utils && \
    wget https://bisq.network/downloads/v1.8.2/Bisq-64bit-1.8.2.deb && \
    dpkg -i Bisq-64bit-1.8.2.deb && \
    rm -rf Bisq-64bit-1.8.2.deb &&\
    rm -rf /var/cache/* && \
    rm -rf /usr/share/man/*  && \
    rm -rf /tmp/* && \
    apt-get purge -y apt-utils wget && \
    chown user:user -R /opt/bisq/
USER user
ENV HOME /home/user
CMD ["/opt/bisq/bin/Bisq"]