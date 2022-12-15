#!/bin/bash
sudo su
apt-get update
 apt-get  install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker vagrant
