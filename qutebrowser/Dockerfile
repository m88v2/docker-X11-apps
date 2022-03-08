FROM ubuntu:21.04

ENV TZ=America/Sao_Paulo
ARG DEBIAN_FRONTEND=noninteractive
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install qutebrowser
RUN apt-get update >> /dev/null && \
    apt-get install -y qutebrowser bash >> /dev/null && \
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
CMD qutebrowser