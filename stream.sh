#!/bin/bash

set -e

while true
do
ffmpeg -re -i 'https://tvs2.aynaott.com/Ptvsports/tracks-v1a1/mono.m3u8?hdnts=st=1696767698~exp=1696810898~acl=/*~data=45.61.146.183-WEB~hmac=0f69a398da73c71e49dfb6842cf84a6dd27ea47db011f4d236973c6099b02530' -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmps://dc5-1.rtmp.t.me/s/1232369957:_ZNvpDHr6Fi2TTx5ZVf-lA
done
