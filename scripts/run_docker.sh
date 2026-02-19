#!/bin/bash

cd $(dirname $0)/../
export ASKEY_TOP_DIR=$(pwd)

docker_cmd="/bin/bash"
for arg in $*
do
case $arg in
	build) docker_cmd="/workspace-askey/build/build.sh";;
	sh) docker_cmd="/bin/bash";;
esac
done

[ -e ${ASKEY_TOP_DIR}/build/tmp ] || mkdir -p ${ASKEY_TOP_DIR}/build/tmp

docker run \
   --security-opt apparmor=unconfined \
   --security-opt seccomp=unconfined \
   --security-opt systempaths=unconfined \
   --rm \
   --privileged \
   -it \
   -v ${ASKEY_TOP_DIR}:/workspace \
   -v ${HOME}:${HOME} \
   -v ${ASKEY_TOP_DIR}/build/tmp:/tmp \
   -u "$(id -u):$(id -g)" \
   -e HOME="${HOME}" \
   -e USER="${USER}" \
   -e LOGNAME="${USER}" \
   -v /etc/passwd:/etc/passwd:ro \
   -v /etc/group:/etc/group:ro \
   --name ${USER}-`date +%s` \
   --hostname $(basename `pwd`|sed 's/\./_/g') \
   ubuntu-image:18.04 \
   ${docker_cmd}

