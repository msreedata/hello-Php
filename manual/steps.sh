#!/bin/bash
:' Run below lines manually first -- this will build the docker image from dockerFile and start the container

cd $HOME
mkdir -p dockerstore
cd dockerstore/
git clone https://github.com/msreedata/hello-Php.git
cd $HOME/dockerstore/hello-Php

'

sudo yum -y install docker
ls
read -rsp $'Press any key to continue...\n' -n1 key

systemctl start docker
systemctl enable docker
systemctl status docker
read -rsp $'Press any key to continue...\n' -n1 key

sudo docker build . -t hellophp:v1
sudo docker image ls
read -rsp $'Press any key to continue...\n' -n1 key

sudo docker run --rm -d -p 80:8080 --name hello1 hellophp:v1
sudo docker ps -a
#
