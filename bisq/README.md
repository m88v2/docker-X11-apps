# bisq

##### Site project:

* [https://bisq.network/](https://bisq.network/)

##### Docker Image:

* [https://hub.docker.com/r/m88v2/bisq](https://hub.docker.com/r/m88v2/bisq)

##### Run in Linux:

```bash
docker run --rm -it \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $(pwd):/home/user/share \
	-e DISPLAY=$DISPLAY \
	m88v2/bisq
```

[Go Home](../)
