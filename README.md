# Docker

docker applications with X11

- [dbeaver](dbeaver/)
- [chrome](chrome/)
- [brave](brave/)
- [tor-browser](tor-browser/)
- [firefox](firefox/)

to use x11 applications in docker you must this volume and an env variable:

```bash
-v /tmp/.X11-unix:/tmp/.X11-unix 
-e DISPLAY=$DISPLAY 
```
