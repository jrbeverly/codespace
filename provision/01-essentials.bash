#!/usr/bin/env bash
set -euf -o pipefail

apt-get install -y jq \
    wget \
    zip unzip \
    build-essential \
    apt-transport-https \
    ca-certificates \
    gettext \
    curl \
    gnupg-agent \
    software-properties-common
