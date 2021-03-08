#!/usr/bin/env bash

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

groupadd -g 1002 docker
apt-get update -y
apt-get install -y docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker abc
