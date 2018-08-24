#!/usr/bin/env bash


./darknet detect cfg/yolov3.cfg weights/yolov3.weights "$1"
