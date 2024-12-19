#!/bin/sh
#Script to issue graceful PaaS shutdown to avoid lengthy app db recovery on next restart
curl -k -b cookies.txt -L -i -w '\n' -X POST https://xtc-platform.localhost.xqiz.it/host/shutdown