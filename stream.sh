#!/bin/bash

set -e

while true
do
ffmpeg \
    -re -f lavfi -i "movie=filename=318.mp4:loop=0, setpts=N/(FRAME_RATE*TB)" \
    -thread_queue_size 512 -i "https://radio.lotustechnologieslk.net:2020/stream/hirufmgarden" \
    -map 0:v:0 -map 1:a:0 \
    -map_metadata:g 1:g \
    -vcodec libx264 -pix_fmt yuv420p -preset $QUAL -r $FPS -g $(($FPS * 2)) -b:v $VBR \
    -acodec libmp3lame -ar 44100 -threads 6 -qscale:v 3 -b:a 320000 -bufsize 512k \
    -f flv "rtmps://dc5-1.rtmp.t.me/s/1232369957:_ZNvpDHr6Fi2TTx5ZVf-lA"
done
