FROM ubuntu:18.04
LABEL author="fbnmtz"
LABEL mail="fabiano.matoz@gmail.com"

ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    echo -e "XKBMODEL='pc105'\nXKBLAYOUT='us'\nXKBVARIANT='intl'\nXKBOPTIONS=''" > /etc/default/keyboard

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -f -y \
    sudo wget xz-utils bash \
    libdbus-glib-1-dev \
    packagekit-gtk3-module \
    libxt-dev \
    file && \
    mkdir -p /app/tor /home/user && \
    groupadd user && \
    useradd -d /home/user -s /bin/bash -g user user && \
    echo "user ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/user && \
    chmod 0440 /etc/sudoers.d/user && \
    chown user:user -R /home/user && \
    wget -O /app/tor.tar.xz \
    https://www.torproject.org/dist/torbrowser/11.0.6/tor-browser-linux64-11.0.6_en-US.tar.xz && \
    tar --extract --xz -f /app/tor.tar.xz -C /app/tor --strip-components=1 && \
    chmod a+x /app/tor/Browser/start-tor-browser && \
    chown user:user -R /app

# dependecies for tor-browser
# libdbus-glib-1-dev \
# packagekit-gtk3-module \
# libxt-dev \
# file

# remove files
RUN rm -rf /var/cache/* && \
    rm -rf /usr/share/man/*  && \
    rm -rf /app/tor.tar.xz && \
    rm -rf /tmp/* && \
    apt-get purge -y wget xz-utils
    
VOLUME ["${HOME}/downloads"]
USER user
WORKDIR /app/tor/Browser
CMD ["./start-tor-browser","-v"]

# docker run  -it \
#     -v /tmp/.X11-unix:/tmp/.X11-unix \
#     -v $(pwd):/home/user/share \
#     -e DISPLAY=$DISPLAY \
#     -v "$HOME/.Xauthority:$HOME/.Xauthority:rw" \
#     -name tor-browser \
#     fbnmtz/tor-browser