#!/bin/bash

set -e

while true
do
ffmpeg -re -i 'https://es5.quest123.top:8088/live/webcricn04/playlist.m3u8?id=114607&pk=97c500581dcf174d9c131ce5501f933acfbe01b16d11f374cadf78c674c2bdefe6c905763df43591cfb2f85e9d305b7bba5ebd8862d18949104b916860984605' -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmps://dc5-1.rtmp.t.me/s/1232369957:_ZNvpDHr6Fi2TTx5ZVf-lA
done
