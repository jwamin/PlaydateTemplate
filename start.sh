#!/usr/bin/zsh

if [ ! -d "playdate" ]; then
  #wget https://download.panic.com/playdate_sdk/Linux/PlaydateSDK-latest.tar.gz &&
  tar -xzf PlaydateSDK-latest.tar.gz
  cp -r PlaydateSDK-*/ ./playdate && rm -R PlaydateSDK-*/
  rm -rf *.tar.gz
fi