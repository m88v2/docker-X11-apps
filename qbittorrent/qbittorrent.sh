#!/usr/bin/env bash
#
# ############################################################################
# Project: docker-X11-apps (none)
# File...: qbittorrent/qbittorrent.sh
# Created: Tuesday, 2023/01/17 - 02:57:16
# Author.: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Last Modified: Thursday, 2023/04/06 - 00:02:24
# Modified By..: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Version: 0.0.2.37
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
  -v "$PWD"/downloads:/home/user/Downloads \
	-e DISPLAY="$DISPLAY" \
  --name qbittorrent-docker \
	m88v2/qbittorrent