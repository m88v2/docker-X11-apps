# dbeaver

Site project:
https://dbeaver.io

Docker Image:
https://hub.docker.com/repository/docker/fabriciogmatos/dbeaver

# Run in Linux:

```bash
docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/home/fgm/share -e DISPLAY=$DISPLAY fabriciogmatos/dbeaver:v1
```

[Go Home](../README.md)