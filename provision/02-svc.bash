#!/usr/bin/env bash
set -euf -o pipefail

github_get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

latest=$(github_get_latest_release cli/cli)
latest=${latest#"v"}
echo "gh cli/cli latest release: ${latest}"
curl -sSL https://github.com/cli/cli/releases/download/v${latest}/gh_${latest}_linux_amd64.deb --output gh.deb
dpkg -i gh.deb
rm gh.deb