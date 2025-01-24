#!/usr/bin/env zsh

echo "Please enter the server ip to update"
read svr_ip

# copy over local build to remote box
scp -i ~/.ssh/id_rsa -r ~/xtclang/xvm/xdk/build/install/xdk/* xtcuser@$svr_ip:~/xdk
echo 'XDK content copied'
scp -i ~/.ssh/id_rsa -r ~/xtclang/platform/lib/* xtcuser@$svr_ip:~/xqiz.it/lib
echo 'Platform content copied' 

echo 'artefacts copied to '$svr_ip
echo '****************************'
echo ' create remote XTC binaries '
echo '****************************'

