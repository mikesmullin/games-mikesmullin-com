#!/usr/bin/env bash
set -x
ls -1 | grep -v CNAME | grep -v publish.sh | xargs rm -rf
wget -e robots=off -nH -m localhost:3000
