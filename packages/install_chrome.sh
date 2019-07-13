#!/usr/bin/env bash

TMP_DIR=/tmp

pushd ${TMP_DIR}
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install -i google-chrome-stable_current_amd64.deb
popd
