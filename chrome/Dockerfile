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

# google-chorme
RUN apt-get update && apt-get install -y gnupg gnupg2 gnupg1 >> /dev/null

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list

RUN apt-get update && apt-get install -y google-chrome-stable >> /dev/null

RUN echo "google-chrome-stable --disable-setuid-sandbox --no-sandbox" > /bin/chrome && \
sudo chmod +x /bin/chrome
# remove trash files
RUN rm -rf /var/cache/* && \
    rm -rf /usr/share/man/*  && \
    rm -rf /tmp/*

USER fgm
ENV HOME /home/fgm
CMD /bin/chrome