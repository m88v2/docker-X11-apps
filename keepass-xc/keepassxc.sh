#!/usr/bin/env bash
#
# ############################################################################
# Project: <<myroot>> (<<projectversion>>)                                     #
# File...: <<relativefile>>                                                    #
# Created: Tuesday, 2023/01/17 - 02:57:16
# Author.: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Last Modified: Saturday, 2026/08/01 - 15:28:08                               #
# Modified By..: @fbnmtz, (fabiano.matoz@gmail.com)                            #
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Version: <<myfileversion>>                                                   #
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
    --name keepassxc-docker \
    m88v2/keepassxc
