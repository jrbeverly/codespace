#!/usr/bin/env bash
set -euf -o pipefail

github_get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

latest=$(github_get_latest_release cli/cli)
latest=${latest#"v"}
curl "https://releases.hashicorp.com/terraform/${latest}/terraform_${latest}_linux_amd64.zip" -o "terraform.zip"
unzip "terraform.zip"
mv terraform /usr/local/bin/
rm "terraform.zip"
