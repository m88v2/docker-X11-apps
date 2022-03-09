# chrome

##### Site project:

* [https://www.google.com/intl/pt-BR/chrome](https://www.google.com/intl/pt-BR/chrome)

##### Docker Image:

* [https://hub.docker.com/r/m88v2/chrome](https://hub.docker.com/r/m88v2/chrome)

##### Run in Linux:

```bash
docker run --rm -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd):/home/user/share \
    -e DISPLAY=$DISPLAY \
    m88v2/chrome
```

[Go Home](https://github.com/M88V2/docker-X11-apps)