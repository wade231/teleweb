#!/bin/bash

set -e

while true
do
ffmpeg -re -i 'https://lin-gd-001-cf.slivcdn.com/out/v1/f88af37f57d94cbd8c584cd5e83d92aa/master_6.m3u8?hdntl=exp=1678823306~acl=*~hmac=28e52df263eff103d0d783ed9481e63cc26a05ef4e68ef975efca53051185db5&originpath=/linear/hls/pb/event/x7rXWd2ERZ2tvyQWPmO1HA/stream/633e5cf9-709e-408b-b08c-7bc99435c7b2:SIN/variant/85776a91b3eddd067623d8028b35e375/bandwidth/1245230.m3u8' -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmps://dc5-1.rtmp.t.me/s/1232369957:_ZNvpDHr6Fi2TTx5ZVf-lA
done
