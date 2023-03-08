#!/bin/bash

set -e

while true
do
ffmpeg -re -i https://cba5182b39c145c2b96ecc5c3f72e41a.mediatailor.us-east-1.amazonaws.com/v1/manifest/44f73ba4d03e9607dcd9bebdcb8494d86964f1d8/Plex_GravitasMovies/6f633a78-79a9-4cca-8efe-5e31400b506d/4.m3u8 -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmps://dc5-1.rtmp.t.me/s/1232369957:_ZNvpDHr6Fi2TTx5ZVf-lA
done
