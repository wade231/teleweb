#!/bin/bash

set -e

while true
do
ffmpeg -re -i https://cbsnews.akamaized.net/hls/live/2020607/cbsnlineup_8/master.m3u8 -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmp://a.rtmp.youtube.com/live2/513d-xphe-p2qt-v3w0-4bp3
done
