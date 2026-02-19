#!/bin/bash -f 

GITMODULES=".gitmodules"
TMP_FILE="/tmp/.gitmodules.$$"

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

echo "`date`:Cloning top layer to $FOLDER..."
#git clone ssh://git@bitbucket.askey.com.tw:7999/purtwd/scp-wifi7ask-device.git $FOLDER
git clone ssh://git@10.1.6.85:7999/purtwd/scp-wifi7ask-device.git $FOLDER
echo "`date`:Cloning top layer to $FOLDER done"


echo "$FOLDER size ..."
du -sh $FOLDER
cd $FOLDER

git submodule update --init --recursive || true
