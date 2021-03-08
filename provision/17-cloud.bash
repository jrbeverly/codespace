#!/usr/bin/env bash

curl "https://releases.hashicorp.com/terraform/0.14.6/terraform_0.14.6_linux_amd64.zip" -o "terraform.zip"
unzip "terraform.zip"
mv terraform /usr/local/bin/
rm "terraform.zip"
