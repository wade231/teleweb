#!/bin/bash

set -e

while true
do
 ffmpeg \
    -re -f lavfi -i "movie=filename=318.mp4:loop=0, setpts=N/(FRAME_RATE*TB)" \
    -thread_queue_size 512 -i "https://radio.lotustechnologieslk.net:2020/stream/hirufmgarden" \
    -map 0:v:0 -map 1:a:0 \
    -map_metadata:g 1:g \
    -c:v libx264 -preset veryfast -b:v 3000k -maxrate 3000k -bufsize 6000k \
    -framerate 25 -video_size 480×360 -vf "format=yuv420p" -g 50 -shortest -strict experimental \
    -c:a aac -b:a 128k -ar 44100 \
    -f flv rtmps://dc5-1.rtmp.t.me/s/1232369957:_ZNvpDHr6Fi2TTx5ZVf-lA
done
