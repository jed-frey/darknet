#!/usr/bin/env bash
INPUT=`realpath ${1}`

cd /root/.darknet
./darknet detect cfg/yolov3.cfg weights/yolov3.weights "$1" 2>/dev/null >${INPUT}.yolov3
