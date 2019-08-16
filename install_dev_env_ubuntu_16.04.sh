#!/bin/sh

# -------------------
# | COMMON PACKAGES |
# -------------------
sudo apt update && apt install -y --no-install-recommends \
        build-essential \
        git \
        curl \
        ssh \
        nano \
        htop \
        unzip \
        wget \
        apt-transport-https \
        ca-certificates

# ----------------------------------
# | PACKAGES FOR C/C++ DEVELOPMENT |
# ----------------------------------
sudo apt update && apt install -y --no-install-recommends \
        cmake \
        clang \
        libboost-dev \
        libboost-all-dev \
        libjsoncpp-dev

# -----------------------
# | PACKAGES FOR SERVER |
# -----------------------
sudo apt update && apt install -y --no-install-recommends \
        openssh-server \
        nginx


# DOCKER INSTALLATION
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
rm get-docker.sh
sudo usermod -aG docker $USER # for executing docker command without sudo

# DOCKER-COMPOSE INSTALLATION
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
