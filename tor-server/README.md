# tor-server

Site project:
https://www.torproject.org

Docker Image:
https://hub.docker.com/repository/docker/fabriciogmatos/tor-server:v1

# Run in Linux:

```bash
docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/home/fgm/share -e DISPLAY=$DISPLAY fabriciogmatos/tor-server:v1
```

[Go Home](../README.md)