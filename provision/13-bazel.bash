#!/usr/bin/env bash

npm install -g @bazel/bazelisk
bazel --version

curl -sSL https://github.com/bazelbuild/buildtools/releases/download/3.5.0/buildifier > /usr/bin/buildifier
curl -sSL https://github.com/bazelbuild/buildtools/releases/download/3.5.0/buildozer > /usr/bin/buildozer
chmod +x /usr/bin/buildifier
chmod +x /usr/bin/buildozer
