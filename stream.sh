#!/bin/bash

set -e

while true
do
ffmpeg -re -i https://crichdplayer.xyz/embed2.php?id=btsp3 -c:v copy -c:a copy -f flv rtmps://dc5-1.rtmp.t.me/s/926739692:_Czm-Fbv5bbF2Npo7YaDLg
done
