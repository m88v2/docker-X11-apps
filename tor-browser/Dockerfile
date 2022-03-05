FROM ubuntu:18.04
LABEL author="fbnmtz"

ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN echo -e "XKBMODEL='pc105'\nXKBLAYOUT='us'\nXKBVARIANT='intl'\nXKBOPTIONS=''" > /etc/default/keyboard


RUN apt-get update && apt-get install -f -y sudo wget xz-utils bash 
#zenity kdialog  gxmessage 

RUN mkdir -p /app/tor /home/user && \
    groupadd user && \
    useradd -d /home/user -s /bin/bash -g user user && \
    echo "user ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/user && \
    chmod 0440 /etc/sudoers.d/user && \
    chown user:user -R /home/user

RUN wget -O /app/tor.tar.xz \
    https://www.torproject.org/dist/torbrowser/11.0.6/tor-browser-linux64-11.0.6_en-US.tar.xz

RUN tar --extract --xz -f /app/tor.tar.xz -C /app/tor --strip-components=1 && \
    chmod a+x /app/tor/Browser/start-tor-browser
    # chmod a+x /app/tor/start-tor-browser.desktop

# RUN sudo apt-get install -y -f kdialog  
RUN apt-get install -y libdbus-glib-1-dev
RUN apt-get install -y packagekit-gtk3-module
RUN apt-get install -y libxt-dev
RUN apt-get install -y file
RUN chown user:user -R /app

# remove trash files
RUN rm -rf /var/cache/* && \
    rm -rf /usr/share/man/*  && \
    rm -rf /tmp/* 

USER user
WORKDIR /app/tor/Browser
CMD ./start-tor-browser -v


# docker run --rm -it \
#     -v /tmp/.X11-unix:/tmp/.X11-unix \
#     -v $(pwd):/home/fgm/share \
#     -e DISPLAY=$DISPLAY \
#     -v "$HOME/.Xauthority:$HOME/.Xauthority:rw" \
#     fbnmtz/tor-browser


