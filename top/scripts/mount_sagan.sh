#!/usr/bin/env bash

set -ex

sudo \
    sshfs \
    -p 9909 \
    -o allow_other,defer_permissions,IdentityFile=/Users/jack/.ssh/jackcmay.github.com.id_rsa \
    jackcmay@tensorcloud.com:/home/jackcmay/workbench \
    /Users/jack/workbench/remote/sagan
