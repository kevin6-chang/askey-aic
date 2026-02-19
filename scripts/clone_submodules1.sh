#!/bin/bash -f 

OLD_PATTERN="\.\./\.\./scpcom/packages/charter-cujo-stack"
NEW_PATTERN="ssh://git@bitbucket.askey.com.tw:7999/pggrtwd/cco-wifi6e-cujo.git"
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
cd $FOLDER
cp $GITMODULES $TMP_FILE
cp $GITMODULES ${GITMODULES}.back

sed "s?${OLD_PATTERN}?${NEW_PATTERN}?" $TMP_FILE  | tee $GITMODULES

rm -f $TMP_FILE

echo "Modifying $GITMODULES done"
git submodule sync --recursive

echo "`date`:Cloning submodules ..."
for subm in openwrt feeds/scp_custom feeds/cujo feeds/oem_pkgs; do \
    echo  "    `date`:Cloning $subm ..."
    git submodule deinit -f $subm
    rm -fr $subm
    rm -fr .git/modules/$subm
    git submodule update --depth=1 --init --remote --recursive $subm
    echo  "     `date`:Cloning $subm done"
    echo "    $subm size ..."
    du -sh $subm
done

echo "`date`:Clone submodules done"

echo "$0 $* done"
