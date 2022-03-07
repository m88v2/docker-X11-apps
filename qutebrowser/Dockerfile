FROM ubuntu:21.04

ENV TZ=America/Sao_Paulo
ARG DEBIAN_FRONTEND=noninteractive
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update >> /dev/null && apt-get install -y sudo bash wget vim apt-utils >> /dev/null

RUN mkdir /home/fgm && \
    groupadd fgm && \
    useradd -d /home/fgm -s /bin/bash -g fgm fgm && \
    echo "fgm ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/fgm && \
    chmod 0440 /etc/sudoers.d/fgm && \
    chown fgm:fgm -R /home/fgm

# Install qutebrowser
RUN apt-get install -y qutebrowser >> /dev/null

# remove trash files
RUN rm -rf /var/cache/* && \
    rm -rf /usr/share/man/*  && \
    rm -rf /tmp/*

USER fgm
ENV HOME /home/fgm
CMD qutebrowser