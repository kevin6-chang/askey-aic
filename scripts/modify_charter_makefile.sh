#!/bin/bash -f 
set -x

sed -i "s|\(COSS_SOURCE_REPO_OVERRIDE ?= \).*|\1git@gitlab.spectrumflow.net:ese/scpfirmware/scpcom/packages/coss/package.git|" ./feeds/scp/feed/coss/Makefile

sed -i "s|\(ODHCP6C_SOURCE_REPO_OVERRIDE ?= \).*|\1git@gitlab.spectrumflow.net:ese/scpfirmware/scpcom/packages/odhcp6c.git|" ./feeds/scp/feed/odhcp6c/Makefile
