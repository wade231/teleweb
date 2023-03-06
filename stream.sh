#!/bin/bash

set -e

while true
do
ffmpeg -re -i https://cba5182b39c145c2b96ecc5c3f72e41a.mediatailor.us-east-1.amazonaws.com/v1/manifest/44f73ba4d03e9607dcd9bebdcb8494d86964f1d8/Plex_GravitasMovies/e30df275-afd4-41c5-8142-2beefcc93f85/3.m3u8 -f flv rtmps://dc5-1.rtmp.t.me/s/1709976325:_HeNVWeSSIs2bA_34jacWg
done
