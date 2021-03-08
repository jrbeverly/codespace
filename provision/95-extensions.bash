#!/usr/bin/env bash

xargs -L 1 -a /tmp/settings/extensions/vscode.txt code-server --extensions-dir /config/extensions --install-extension