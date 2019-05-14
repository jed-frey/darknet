#!/usr/bin/env bash
INPUT=`realpath ${1}`
YOLOV3=${INPUT}.yolov3

if [ -f "${YOLOV3}" ]; then
    echo "Skipping ${INPUT}"
else
cd ~/.darknet
./darknet detect cfg/yolov3.cfg weights/yolov3.weights "$1" 2>/dev/null >${INPUT}.yolov3
fi
