#!/bin/bash -f 
set -x

sed -i "s|\(COSS_SOURCE_REPO_OVERRIDE ?= \).*|\1ssh://git@10.1.6.85:7999/purtwd/coss-package.git|" ./feeds/scp/feed/coss/Makefile

sed -i "s|\(ODHCP6C_SOURCE_REPO_OVERRIDE ?= \).*|\1ssh://git@10.1.6.85:7999/purtwd/odhcp6c.git|" ./feeds/scp/feed/odhcp6c/Makefile

