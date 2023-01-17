#!/usr/bin/env bash
#
# ############################################################################
# Project: docker-X11-apps (none)
# File...: bisq/bisq.sh
# Created: Tuesday, 2023/01/17 - 02:57:16
# Author.: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Last Modified: Tuesday, 2023/01/17 - 03:14:34
# Modified By..: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Version: 0.0.1.5
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
	-e DISPLAY=$DISPLAY \
    --name bisq-docker \
	m88v2/bisq
