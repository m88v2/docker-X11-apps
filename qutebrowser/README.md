# qutebrowser

Site project:
https://qutebrowser.org

Docker Image:
https://hub.docker.com/r/m88v2/qutebrowser

# Run in Linux:

```bash
docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/home/user/share -e DISPLAY=$DISPLAY m88v2/qutebrowser:v1
```

[Go Home](../README.md)
