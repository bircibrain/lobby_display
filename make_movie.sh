#!/bin/sh
mkdir jpgs
convert -density 600 -geometry 1920x1080 lobby.pdf jpgs/lobby-%03d.jpg
ffmpeg -r .03 -f image2 -s 1920x1080 -i jpgs/lobby-%03d.jpg -vcodec libx264 -crf 1  -pix_fmt yuv420p -r 24 lobby.mp4
