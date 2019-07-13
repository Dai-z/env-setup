#!/usr/bin/env bash

if [ -z $COMMON_SOURCED ]; then
  source include/common.sh
fi

V2RAY_VERSION=4.20.0
TMP_DIR=/tmp

prompt_default V2RAY_VERSION "V2ray Version [${V2RAY_VERSION}]"

# get latest cmake source
pushd ${TMP_DIR}
wget https://github.com/v2ray/v2ray-core/releases/download/v${V2RAY_VERSION}/v2ray-linux-64.zip
unzip -d ~/Downloads/v2ray-linux-64 v2ray-linux-64.zip
cd ~/Downloads/v2ray-linux-64/
./v2ray -version

popd
