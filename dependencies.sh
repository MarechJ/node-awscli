#!/bin/bash

echo "installing AWS CLI..."
apt-get update && apt-get install -qq -y python-pip libpython-dev
curl -O https://bootstrap.pypa.io/get-pip.py && python get-pip.py
pip install -q awscli --upgrade

# ecs-cli
curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
chmod +x /usr/local/bin/ecs-cli

# ecs-deploy
pip install ecs-deploy -y

# global npm
npm install -g merge-yaml-cli
npm install -g aws-sdk
