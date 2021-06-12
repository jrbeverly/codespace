#!/usr/bin/env bash
set -euf -o pipefail

apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Configure the dotfiles for my environment