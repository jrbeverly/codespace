#!/usr/bin/env bash
set -euf -o pipefail

github_get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

npm install -g @bazel/bazelisk
bazel --version

latest=$(github_get_latest_release bazelbuild/buildtools)
echo "bazelbuild/buildtools latest release: ${latest}"

curl -sSL https://github.com/bazelbuild/buildtools/releases/download/${latest}/buildifier-linux-amd64 > /usr/bin/buildifier
curl -sSL https://github.com/bazelbuild/buildtools/releases/download/${latest}/buildozer-linux-amd64 > /usr/bin/buildozer
chmod +x /usr/bin/buildifier
chmod +x /usr/bin/buildozer
