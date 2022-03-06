FROM ubuntu:21.04

ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN echo -e "XKBMODEL='pc105'\nXKBLAYOUT='us'\nXKBVARIANT='intl'\nXKBOPTIONS=''" > /etc/default/keyboard

RUN apt-get update && apt-get install -y sudo bash bzip2 wget tar xz-utils >> /dev/null

RUN mkdir /home/fgm && \
    groupadd fgm && \
    useradd -d /home/fgm -s /bin/bash -g fgm fgm && \
    echo "fgm ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/fgm && \
    chmod 0440 /etc/sudoers.d/fgm && \
    chown fgm:fgm -R /home/fgm

# WORKDIR /home/fgm

RUN mkdir /usr/share/desktop-directories/

RUN apt-get install -y apt-utils  >> /dev/null
RUN apt-get install -y libjavafxsvg-java libasound2 libbsd0 libx11-6 libxau6 libxcb1 libxdmcp6 libxext6 libxi6 libxrender1 libxtst6 xdg-utils >> /dev/null
RUN wget https://bisq.network/downloads/v1.8.2/Bisq-64bit-1.8.2.deb >> /dev/null
RUN dpkg -i Bisq-64bit-1.8.2.deb
RUN rm -rf Bisq-64bit-1.8.2.deb

RUN rm -rf /var/cache/* && \
    rm -rf /usr/share/man/*  && \
    rm -rf /tmp/*

RUN chown fgm:fgm -R /opt/bisq/
USER fgm
ENV HOME /home/fgm
CMD ["./opt/bisq/bin/Bisq"]