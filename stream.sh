#!/bin/bash

set -e

while true
do
ffmpeg -re -i https://cbsnews.akamaized.net/hls/live/2020607/cbsnlineup_8/master.m3u8 -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmps://dc5-1.rtmp.t.me/s/926739692:_Czm-Fbv5bbF2Npo7YaDLg
done
