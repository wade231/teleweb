#!/bin/bash

set -e

while true
do
ffmpeg -re -i 'https://d2j1554jr9lrly.cloudfront.net/live/74c36069-cbbf-4036-b3ea-4fb8334d2692/live.isml/74c36069-cbbf-4036-b3ea-4fb8334d2692.m3u8' -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmps://dc5-1.rtmp.t.me/s/1939768651:1OBhYuPJBg6d10PNvE1D2A
done
