#!/usr/bin/env bash
curl -sSL --noproxy "*"  https://dot.net/v1/dotnet-install.sh -o /tmp/dotnet-install.sh
bash /tmp/dotnet-install.sh -c 5.0

/config/.dotnet/dotnet tool install -g dotnet-format
/config/.dotnet/dotnet tool install -g PowerShell
