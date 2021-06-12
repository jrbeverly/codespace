#!/usr/bin/env bash
set -euf -o pipefail

curl "https://github.com/bitwarden/cli/releases/download/v1.14.0/bw-linux-1.14.0.zip" -o "bitwarden.zip"
unzip "bitwarden.zip"
mv bw /usr/local/bin/
rm "bitwarden.zip"
