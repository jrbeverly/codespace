#!/usr/bin/env bash
set -euf -o pipefail

apt-get install -y python3 python3-pip 
python3 -m pip install --upgrade pip
