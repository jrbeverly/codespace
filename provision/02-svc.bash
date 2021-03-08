#!/usr/bin/env bash

curl -sSL https://github.com/cli/cli/releases/download/v1.2.1/gh_1.2.1_linux_amd64.deb --output gh.deb
dpkg -i gh.deb
rm gh.deb