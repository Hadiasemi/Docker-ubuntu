#
# Ubuntu Dockerfile
#
# https://github.com/Hadiasemi/Docker-ubuntu
#

# Pull base image.
FROM ubuntu:18.04

# MAINTAINER Hadi Asemi
LABEL maintainer="Hadi Asemi"

ENV user security

# Install:
RUN sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list      
RUN apt-get  update && \ 
   apt-get -y upgrade && \
   apt-get install -y build-essential && \
   apt-get install -y software-properties-common && \
   apt-get install -y byobu python3-pip curl git sudo htop man unzip vim wget bash-completion exuberant-ctags && \
   rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash -g root ${user} 


ADD .vimrc /home/${user}/.vimrc

WORKDIR /${user}


USER ${user}

CMD ["byobu"]

