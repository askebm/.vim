#!/bin/bash
WORK_PATH=${1:-/tmp}
WORK_DIR="ScreenGrabs"
if [ ! -e $(echo "${WORK_PATH}/${WORK_DIR}/"*".png" | cut -d" " -f1) ]
then
	mkdir -p ${WORK_PATH}/${WORK_DIR}
	A=0
else
	A=$(basename --suffix=.png -a ${WORK_PATH}/${WORK_DIR}/*".png" | sort -n | tail -n1)
	A=$(expr ${A} + 1)
fi
import "${WORK_PATH}/${WORK_DIR}/${A}.png"
echo "${WORK_DIR}/${A}.png"
