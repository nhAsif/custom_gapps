#!/usr/bin/env bash

git clone --depth=1 https://github.com/nhAsif/build_nikgapps.git -b main build
git clone --depth=1 https://github.com/nhAsif/config.git -b main config
sudo apt install aapt -y
sudo apt install python3 -y
python3 -m pip install wheel setuptools testresources
pip3 install --upgrade pip
pip3 install -r build/requirements.txt
read -p "Enter your android version: " adv
wget https://raw.githubusercontent.com/nhAsif/config/main/12.1/nikgapps.config -P config/$adv
read -p "Enter your gapps name & edit your gapps config: " name
mv config/$adv/nikgapps.config $name.config
nano config/$adv/*.config
python3 build/config_control.py $adv
