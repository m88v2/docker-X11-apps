# keepass-xc

Site project:
https://keepassxc.org/

Docker Image:
https://hub.docker.com/repository/docker/m88v2/keepassxc

Run in Linux:

```bash
docker run --rm \
    -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd):/home/user/share \
    -e DISPLAY=$DISPLAY \
    --name keepasxc-docker \
    m88v2/keepassxc
```

[Go Home](../README.md)
