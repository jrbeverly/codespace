#!/usr/bin/env bash
set -euf -o pipefail

curl -sSL -O --noproxy "*" https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz
tar -xvf go1.13.5.linux-amd64.tar.gz 
mv go /usr/local 
rm go1.13.5.linux-amd64.tar.gz