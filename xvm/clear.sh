#!/bin/bash
# Cleardown script for ~/xtclang/xvm

while true; do
read -p "Are you sure you want to clear down the XDK? (y/n) " yn

case $yn in
	[yY] ) echo "Clearing down..."
    #clear down
    sudo rm -rfv ~/xtclang/xvm

    echo "PaaS cleared and reset...remember to rebuild!"
    exit;;
	[nN] ) echo "Changed your mind...!"
    exit;;
	* ) echo "Durrrrr..!!"
esac
echo "XDK vaped...now rebuild!"
done
