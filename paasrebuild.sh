#!/bin/sh
#Rebuild the PaaS
cd ~/xtclang/platform
gradle clean build
echo PaaS rebuilt!