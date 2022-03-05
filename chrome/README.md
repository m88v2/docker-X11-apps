# chrome

Site project:
https://www.google.com/intl/pt-BR/chrome

Docker Image:
https://hub.docker.com/repository/docker/fabriciogmatos/chrome

# Run in Linux:

```bash
docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/home/fgm/share -e DISPLAY=$DISPLAY fabriciogmatos/chrome:v1
```

[Go Home](../README.md)