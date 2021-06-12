#!/usr/bin/env bash
set -euf -o pipefail

version="1.16.5"
curl -sSL -O --noproxy "*" https://dl.google.com/go/go${version}.linux-amd64.tar.gz
tar -xvf go${version}.linux-amd64.tar.gz 
mv go /usr/local 
rm go${version}.linux-amd64.tar.gz