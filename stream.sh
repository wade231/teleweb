#!/bin/bash

set -e

while true
do
ffmpeg -re -i https://dai.google.com/linear/hls/event/wG75n5U8RrOKiFzaWObXbA/master.m3u8 -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmps://dc5-1.rtmp.t.me/s/1232369957:_ZNvpDHr6Fi2TTx5ZVf-lA
done
