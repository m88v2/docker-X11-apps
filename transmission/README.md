<!--
 ############################################################################
 Project: docker-X11-apps (none)
 File...: transmission/README.md
 Created: Monday, 2022/03/14 - 10:46:29
 Author.: @fbnmtz, (fabiano.matoz@gmail.com)
 ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
 Last Modified: Monday, 2022/03/14 - 11:02:12
 Modified By..: @fbnmtz, (fabiano.matoz@gmail.com)
 ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
 Version: 0.0.1.1
 ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
 Description: 
  >
 ############################################################################
 HISTORY:
-->
# Transmission

![transmission](transmission.png)

##### Site project:

* [https://transmissionbt.com/](https://transmissionbt.com/)

##### Docker Image:

* [https://hub.docker.com/r/m88v2/transmission](https://hub.docker.com/r/m88v2/transmission)

##### Run in Linux:

```bash
docker run --rm -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    m88v2/transmission
```

[Go Home](https://github.com/M88V2/docker-X11-apps)
