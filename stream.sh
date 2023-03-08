#!/bin/bash

set -e

while true
do
ffmpeg -re -i https://stream.ads.ottera.tv/cl/230308cg44tpdrmm93bi2el6k0/subtitles_0_0_1_f.m3u8?i=475_166 -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmps://dc5-1.rtmp.t.me/s/1232369957:_ZNvpDHr6Fi2TTx5ZVf-lA
done
