#!/bin/bash

set -e

while true
do
ffmpeg -i https://lin-gd-001-cf.slivcdn.com/out/v1/7394bf66d54d42f09b7cc0ed4bb7e9e9/master_2.m3u8?hdntl=exp=1678227932~acl=*~hmac=ff6a3619489091c567610d5c3d9ef1067d02be3c88027cb69751b993b1c53410&originpath=/linear/hls/pb/event/wG75n5U8RrOKiFzaWObXbA/stream/94217428-3da7-4a3d-b2db-9245a3c5557c:SIN2/variant/62468529bc23c4ccf6bf0c250a29d2bf/bandwidth/1828829.m3u8 -c:v copy -c:a copy -f flv rtmps://dc5-1.rtmp.t.me/s/1232369957:_ZNvpDHr6Fi2TTx5ZVf-lA
done
