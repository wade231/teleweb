#!/bin/bash

set -e

while true
do
ffmpeg -re -i 'https://lin-gd-001-cf.slivcdn.com/out/v1/f88af37f57d94cbd8c584cd5e83d92aa/master_2.m3u8?hdntl=exp=1678310515~acl=*~hmac=6f91af5c893afd7f1002d0743fab169753f636ba6d2f6649fc0f81b6f3a463df&originpath=/linear/hls/pb/event/x7rXWd2ERZ2tvyQWPmO1HA/stream/c69e68f4-2089-473d-b5f3-9c22ea9f5a9e:SIN2/variant/cfa0c96ffd0921cb792c23e4d6205d69/bandwidth/1828921.m3u8' -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmps://dc5-1.rtmp.t.me/s/1232369957:_ZNvpDHr6Fi2TTx5ZVf-lA
done
