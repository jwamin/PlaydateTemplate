#!/usr/bin/zsh

rm -rf playdate
rm -rf
rm -rf CMakeFiles
rm -rf .nova
rm -rf *.pdx
rm -rf Source/*.bin
rm -rf Source/*.so

#rm -rf *.tar.gz

if [ ! -d "playdate" ]; then
  #wget https://download.panic.com/playdate_sdk/Linux/PlaydateSDK-latest.tar.gz &&
  tar -xzf PlaydateSDK-latest.tar.gz
  cp -r PlaydateSDK-*/ ./playdate && rm -R PlaydateSDK-*/
fi