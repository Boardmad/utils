#!/bin/bash
#Build the XDK

cd ~/xtclang
echo "pulling XDK from Github...please wait"
sudo git clone https://github.com/xtclang/xvm.git

cd xvm 
echo "Pull complete...building"
sudo ./gradlew installDist

echo "XDK rebuilt"

cd $XDK_HOME/bin
sudo ./cfg_linux.sh

echo "Executables created"

xec 
xcc

