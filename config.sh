#!/bin/bash

cd ~
echo "remount the disk"
sudo 
echo "install the git and homebrew"
/usr/bin/ruby -e "$(curl -x 127.0.0.1:1087 -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Set git proxy"
git config --global http.proxy 'http://127.0.0.1:1087'
git config --global https.proxy 'http://127.0.0.1:1087'

echo "install the nodejs and npm"
sudo brew install nodejs
npm config set registry https://registry.npm.taobao.org
sudo npm install -g n
sudo npm install -g vue-cli

echo "install the mysql server"
sudo brew install mysql

echo "install the redis"
sudo brew install redis
