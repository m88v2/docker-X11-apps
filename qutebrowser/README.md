# qutebrowser

Site project:
https://qutebrowser.org

Docker Image:
https://hub.docker.com/repository/docker/fabriciogmatos/qutebrowser

# Run in Linux:

```bash
docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/home/fgm/share -e DISPLAY=$DISPLAY fabriciogmatos/qutebrowser:v1
```

[Go Home](../README.md)