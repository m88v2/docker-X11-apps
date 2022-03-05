FROM ubuntu:21.04

ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN echo -e "XKBMODEL='pc105'\nXKBLAYOUT='us'\nXKBVARIANT='intl'\nXKBOPTIONS=''" > /etc/default/keyboard

RUN apt-get update && apt-get install -y sudo bash bzip2 xz-utils >> /dev/null

RUN mkdir /home/fgm && \
    groupadd fgm && \
    useradd -d /home/fgm -s /bin/bash -g fgm fgm && \
    echo "fgm ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/fgm && \
    chmod 0440 /etc/sudoers.d/fgm && \
    chown fgm:fgm -R /home/fgm

# install requiriments 
RUN apt-get install -y wget tar >> /dev/null

# brave
RUN sudo apt-get install -y apt-transport-https curl
RUN sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

RUN echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"| sudo tee /etc/apt/sources.list.d/brave-browser-release.list
RUN sudo apt-get update >> /dev/null
RUN sudo apt-get install -y brave-browser >> /dev/null

RUN echo "brave-browser --disable-setuid-sandbox --no-sandbox" > /bin/brave && \
sudo chmod +x /bin/brave

# remove trash files
RUN rm -rf /var/cache/* && \
    rm -rf /usr/share/man/*  && \
    rm -rf /tmp/*

USER fgm
ENV HOME /home/fgm
CMD /bin/brave