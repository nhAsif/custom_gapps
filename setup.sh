#!/usr/bin/env bash

sudo apt install software-properties-common -y
sudo apt update
sudo apt install python3
python3 -m pip install wheel setuptools testresources
pip3 install --upgrade pip
pip3 install -r build/requirements.txt
nano config/12.1/*.config
