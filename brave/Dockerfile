FROM ubuntu:21.04

ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    echo -e "XKBMODEL='pc105'\nXKBLAYOUT='us'\nXKBVARIANT='intl'\nXKBOPTIONS=''" > /etc/default/keyboard && \
    mkdir /home/user && \
    groupadd user && \
    useradd -d /home/user -s /bin/bash -g user user && \
    chown user:user -R /home/user

RUN apt-get update && apt-get install -y apt-transport-https curl && \
    curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg \
        https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|  tee /etc/apt/sources.list.d/brave-browser-release.list && \
    apt-get update && \
    apt-get install -y brave-browser

# remove trash files
RUN rm -rf /var/cache/* && \
    rm -rf /usr/share/man/*  && \
    rm -rf /tmp/* && \
    apt-get purge -y apt-transport-https curl

USER user
ENV HOME /home/user
CMD brave-browser --no-sandbox