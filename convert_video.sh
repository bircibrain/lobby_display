#!/bin/sh
ffmpeg -i $1 -vcodec libx264 -crf 1 lobby_converted.mp4
