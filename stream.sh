#!/bin/bash

set -e

while true
do
ffmpeg -re -i https://es6.quest123.top:8088/live/webcricu19/playlist.m3u8?id=115680&pk=97c500581dcf174d9c131ce5501f933acfbe01b16d11f374cadf78c674c2bdef2a6d0b7791aa733ea5e50dab88918f9ab7cb45d7010e408d46464280a44278a1 -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmps://dc5-1.rtmp.t.me/s/1709976325:_HeNVWeSSIs2bA_34jacWg
done
