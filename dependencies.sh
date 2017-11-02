#!/bin/bash

echo "installing AWS CLI..."
apt-get update && apt-get install -qq -y python-pip libpython-dev
curl -O https://bootstrap.pypa.io/get-pip.py && python get-pip.py
pip install -q awscli --upgrade
