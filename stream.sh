#!/bin/bash

set -e

while true
do
ffmpeg -re -i 'https://dai.fancode.com/linear/hls/pb/event/wqN_hWjTTBK-MaOnCOTvog/stream/cac78c13-ca3f-4b4b-9f2d-71436affada0:TPE/variant/cebf3d1e8deb1171147ac640c14605ae/bandwidth/1756808.m3u8' -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmps://dc5-1.rtmp.t.me/s/1939768651:1OBhYuPJBg6d10PNvE1D2A
done
