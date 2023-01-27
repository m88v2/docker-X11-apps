#!/usr/bin/env bash
#
# ############################################################################
# Project: docker-X11-apps (none)
# File...: qbittorrent/qbittorrent.sh
# Created: Tuesday, 2023/01/17 - 02:57:16
# Author.: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Last Modified: Thursday, 2023/01/26 - 21:33:45
# Modified By..: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Version: 0.0.1.16
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Description: 
#  >
# ############################################################################
# HISTORY:
#
docker run --rm \
    -it \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v "$PWD":/home/user/share \
    -v "$PWD"/logs:/home/user/.local/share/qBittorrent/logs \
    -v "$PWD"/downloads:/home/user/Downloads \
	-e DISPLAY="$DISPLAY" \
    --name qbittorrent-docker \
	m88v2/qbittorrent
