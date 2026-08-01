#
# ############################################################################
# Project: <<myroot>> (<<projectversion>>)                                     #
# File...: <<relativefile>>                                                    #
# Created: Thursday, 2023/01/26 - 19:26:30
# Author.: @fbnmtz, (fabiano.matoz@gmail.com)
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Last Modified: Saturday, 2026/08/01 - 15:03:07                               #
# Modified By..: @fbnmtz, (fabiano.matoz@gmail.com)                            #
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Version: <<myfileversion>>                                                   #
# ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
# Description: 
#  >
# ############################################################################
# HISTORY:
#
FROM ubuntu:latest

# Evita perguntas interativas durante a instalação dos pacotes
ENV DEBIAN_FRONTEND=noninteractive

# Instala o KeePassXC e dependências de GUI/X11 necessárias
RUN apt-get update && apt-get install -y --no-install-recommends \
    keepassxc \
    qt5-gtk-platformtheme \
    x11-apps \
    && rm -rf /var/lib/apt/lists/*

# Cria um usuário não-root para rodar a aplicação com segurança
RUN useradd -m -s /bin/bash keepassxc
USER keepassxc
ENV HOME=/home/keepassxc

ENTRYPOINT ["keepassxc"]