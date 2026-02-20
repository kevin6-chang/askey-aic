#!/bin/bash -f 

set -Eeuox pipefail

trap 'err_handler $? $LINENO' ERR

err_handler() {
    local exit_code=$1
    local line_no=$2
    echo "ERROR: Command failed with exit code $exit_code on line $line_no" >&2
    exit "$exit_code"
}

if (( $# != 1 )); then
    echo "usage: $0 <folder>" >&2
    exit 1
fi 

FOLDER=$1
COSS_GIT="ssh://git@10.1.6.85:7999/purtwd/coss-package.git"
COSS_PATH=$FOLDER/feeds/scp/feed/coss 
cd $COSS_PATH

coss_version=$(grep "SCP_COSS_VERSION ?=" Makefile | awk '{ print $3 }')
git clone $COSS_GIT  coss-package-test
if [ ! -d coss-package-test ]; then
    echo "error: coss-package-test does not exist, cannot checkout $coss_version"
    exit 1
fi

cd coss-package-test
git checkout $coss_version
git submodule update --init --recursive
