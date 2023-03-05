#!/bin/bash

set -e

while true
do
ffmpeg -re -i MyVideo.mp4 -c:v libx264 -preset veryfast -c:a aac -f flv rtmps://dc5-1.rtmp.t.me/s/926739692:_Czm-Fbv5bbF2Npo7YaDLg
done
