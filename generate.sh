#!/usr/bin/env bash

ffmpeg -version

if [ $? != 0 ]; then
	echo "FFMPEG is not installed"
	exit 0
fi

VIDEO_PATH=$1
THUMBNAIL_OUTPUT_PATH=$2
TIME='00:00:00.000'

ffmpeg -i \
	$VIDEO_PATH \
	-ss $TIME \
	-vframes 1 \
	$THUMBNAIL_OUTPUT_PATH
