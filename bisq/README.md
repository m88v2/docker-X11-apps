# bisq

Site project:
https://bisq.network/

Docker Image:
https://hub.docker.com/repository/docker/fabriciogmatos/bisq

# Run in Linux:

```bash
docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/home/fgm/share -e DISPLAY=$DISPLAY fabriciogmatos/bisq:v1
```

[Go Home](../README.md)