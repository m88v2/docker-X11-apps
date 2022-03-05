# brave

Site project:
https://brave.com

Docker Image:
https://hub.docker.com/repository/docker/fabriciogmatos/brave

# Run in Linux:

```bash
docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/home/fgm/share -e DISPLAY=$DISPLAY fabriciogmatos/brave:v1
```

[Go Home](../README.md)