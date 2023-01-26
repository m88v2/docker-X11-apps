#!/usr/bin/env bash
#
# ############################################################################
# Project: docker-X11-apps (none)
# File...: remmina/remmina.sh
# Created: Tuesday, 2023/01/17 - 02:57:16
# Author.: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Last Modified: Thursday, 2023/01/26 - 19:56:56
# Modified By..: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Version: 0.0.1.8
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Description: 
#  >
# ############################################################################
# HISTORY:
#
docker run --rm \
    -it \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $(pwd):/home/user/share \
	-v $(pwd)/remminaconfig:/home/user/${XDG_DATA_HOME}/remmina \
	-e DISPLAY=$DISPLAY \
    --name remmina-docker \
	m88v2/remmina
