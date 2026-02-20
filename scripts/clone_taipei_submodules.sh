#!/bin/bash -f 
# This script is prepared for clone CBU submodules from the Taipei git

OLD_PATTERN1="\.\./\.\./scpcom/packages/charter-cujo-stack"
#NEW_PATTERN1="ssh://git@bitbucket.askey.com.tw:7999/pggrtwd/cco-wifi6e-cujo.git"
NEW_PATTERN1="ssh://git@10.1.6.85:7999/pggrtwd/cco-wifi6e-cujo.git"
OLD_PATTERN2="\.\./scp-oem-packages/askey"
NEW_PATTERN2="../askey"


GITMODULES=".gitmodules"

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
cd $FOLDER

sed -i "s?${OLD_PATTERN1}?${NEW_PATTERN1}?" $GITMODULES
sed -i "s?${OLD_PATTERN2}?${NEW_PATTERN2}?" $GITMODULES

echo "Modifying $GITMODULES done"
git submodule sync --recursive

echo "`date`:Cloning submodules ..."
#for subm in openwrt feeds/scp_custom feeds/cujo feeds/oem_pkgs; do \
for subm in openwrt; do \
    echo  "    `date`:Cloning $subm ..."
    git submodule deinit -f $subm
    rm -fr $subm
    rm -fr .git/modules/$subm
    git submodule update --init --remote --recursive $subm
    echo  "     `date`:Cloning $subm done"
    echo "    $subm size ..."
    du -sh $subm
done

echo "`date`:Clone submodules done"

echo "$0 $* done"
