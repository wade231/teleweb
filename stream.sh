#!/bin/bash

set -e

while true
do
ffmpeg -re -i https://content.uplynk.com/channel/3324f2467c414329b3b0cc5cd987b6be.m3u8 -c:v libx264 -preset veryfast -b:v 3000k -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmps://dc5-1.rtmp.t.me/s/926739692:_Czm-Fbv5bbF2Npo7YaDLg
done
