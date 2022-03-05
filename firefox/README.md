# firefox

Site project:
https://www.mozilla.org/pt-BR/firefox/new/

Docker Image:
https://hub.docker.com/repository/docker/fabriciogmatos/firefox

# Run in Linux:

```bash
docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/home/fgm/share -e DISPLAY=$DISPLAY fabriciogmatos/firefox:v1
```

[Go Home](../README.md)