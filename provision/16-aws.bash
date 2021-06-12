#!/usr/bin/env bash
set -euf -o pipefail

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version
rm -rf awscliv2/ aws/

mkdir -p ~/.aws
echo """
[profile default]
sso_start_url = https://jrbeverly.awsapps.com/start
sso_region = us-east-1
sso_account_id = 270025776990
sso_role_name = AdministratorAccess
region = ca-central-1
output = json
""" > ~/.aws/config


