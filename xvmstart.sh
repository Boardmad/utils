#!/bin/sh
#prompt for server password
echo Insert an admin password to start the server with?
read -sp 'Password: ' passvar

cd ~/xtclang/platform
xec -L lib/ lib/kernel.xtc $passvar