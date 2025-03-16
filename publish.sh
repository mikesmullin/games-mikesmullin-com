#!/usr/bin/env bash
set -x
ls -1 | grep -v CNAME | grep -v publish.sh | xargs rm -rf
#wget -e robots=off -nH -m localhost:3000
# from WSL2
wget -e robots=off -nH -m 172.24.0.1:3000

# git add -A
# git commit -a -m update
# git push