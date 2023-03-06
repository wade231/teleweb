#!/bin/bash

set -e

while true
do
ffmpeg -i https://content.uplynk.com/channel/3324f2467c414329b3b0cc5cd987b6be.m3u8 -c copy -f flv rtmps://dc5-1.rtmp.t.me/s/926739692:_Czm-Fbv5bbF2Npo7YaDLg
done
