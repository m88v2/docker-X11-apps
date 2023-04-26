#!/usr/bin/env bash
#
# ############################################################################
# Project: docker-X11-apps (none)
# File...: chrome/install-chrome.sh
# Created: Wednesday, 2023/04/26 - 00:18:58
# Author.: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Last Modified: Wednesday, 2023/04/26 - 00:59:51
# Modified By..: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Version: 0.0.1.10
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Description: 
#  >
# ############################################################################
# HISTORY:
#
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && \
sudo echo "deb http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/google.list

sudo apt update 
sudo apt install -y libvulkan1 
sudo apt install -y google-chrome-stable 
sudo rm -rf /var/cache/* 
sudo rm -rf /usr/share/man/*  
sudo rm -rf /tmp/* 