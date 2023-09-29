#!/bin/bash

set -e

while true
do
ffmpeg -re -i 'https://nes03.quest123.top:8088/live/webcricp01/playlist.m3u8?id=113431&pk=d35b8683504371821a58828a27076b9dac2ce302041692ec5da86b7f7ee420057d35ccfebbc25187a3c003cb0c89b438bb2598293c7c5f385eea59aebaca1c75' -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmps://dc5-1.rtmp.t.me/s/1939768651:1OBhYuPJBg6d10PNvE1D2A
done
