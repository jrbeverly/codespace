#!/usr/bin/env bash
set -euf -o pipefail

apt-get install -y nodejs
npm install -g npm

npm install -g static-server
