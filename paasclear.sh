#!/bin/sh
# Cleardown script for ~/xqiz.it to remove:
# ./accounts
# ./users/*.*
# Everything in ./platform except port-forwarding.conf
while true; do
read -p "Are you sure you want to clear down the PaaS? (y/n) " yn

case $yn in
	[yY] ) echo Clearing down...;
    #clear down
    #copy port-forwarding.conf to xqiz.it root
    cp ~/xqiz.it/platform/port-forwarding.conf ~/xqiz.it/port-forwarding.conf
    #clean down redundant/out-of-date PaaS configuration
    rm -rfv ~/xqiz.it/accounts
    rm -rfv ~/xqiz.it/users
    rm -rfv ~/xqiz.it/platform
    #copy back port-forwarding ruleset
    cp ~/xqiz.it/port-forwarding.conf ~/xqiz.it/platform/port-forwarding.conf
    echo PaaS cleared and reset...remember to rebuild!;
    exit;;
	[nN] ) echo Changed your mind...!;
		exit;;
	* ) echo Durrrrr..!!;;
esac
done
echo PaaS vaped...now rebuild!