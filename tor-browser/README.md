# tor-browser

Site project:
https://www.torproject.org/

Docker Image:
https://hub.docker.com/repository/docker/fbnmtz/tor-browser

# Run in Linux:

```bash
docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/home/user/share -e DISPLAY=$DISPLAY fbnmtz/tor-browser
```

[Go Home](../README.md)
