#!/bin/bash

set -e

while true
do
ffmpeg -re -i 'https://tvs1.aynaott.com/sspts1/tracks-v1a1/mono.m3u8?hdnts=st=1696758233~exp=1696801433~acl=/*~data=45.61.146.183-WEB~hmac=8bae0676793cdb6b821b46e4a90bb32b048d729bd8b65d42ce440181a47977a0' -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmps://dc5-1.rtmp.t.me/s/1939768651:1OBhYuPJBg6d10PNvE1D2A
done
