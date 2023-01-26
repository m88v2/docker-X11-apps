# Docker

This repository is a collection of applications running inside docker with X11

check our [profile on Docker Hub](https://hub.docker.com/u/m88v2)

- [bisq](bisq/)
- [brave](brave/)
- [chrome](chrome/)
- [dbeaver](dbeaver/)
- [firefox](firefox/)
- [qutebrowser](qutebrowser/)
- [remmina](remmina/)
- [tor-browser](tor-browser/)
- [tor-server](tor-server/)
- [transmission](transmission/)

to use x11 applications in docker you must set 'volume' and an 'env' variable as described bellow:

```bash
-v /tmp/.X11-unix:/tmp/.X11-unix 
-e DISPLAY=$DISPLAY 
```
