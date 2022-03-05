FROM ubuntu:21.04

ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y sudo bash wget libswt-gtk-4-java >> /dev/null

RUN mkdir /home/fgm && \
    groupadd fgm && \
    useradd -d /home/fgm -s /bin/bash -g fgm fgm && \
    echo "fgm ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/fgm && \
    chmod 0440 /etc/sudoers.d/fgm && \
chown fgm:fgm -R /home/fgm

# Install dbeaver
RUN wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb >> /dev/null
RUN dpkg -i dbeaver-ce_latest_amd64.deb
RUN rm -rf dbeaver-ce_latest_amd64.deb

# remove trash files
RUN rm -rf /var/cache/* && \
    rm -rf /usr/share/man/*  && \
    rm -rf /tmp/*

USER fgm
ENV HOME /home/fgm
CMD dbeaver