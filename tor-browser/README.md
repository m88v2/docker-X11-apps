# tor-browser

Site project:
https://www.torproject.org/

Docker Image:

https://hub.docker.com/r/m88v2/tor-browser

# Run in Linux:

```bash
docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/home/user/share -e DISPLAY=$DISPLAY m88v2/tor-browser
```

[Go Home](../README.md)
