#!/bin/bash

set -e

while true
do
ffmpeg -re -stream_loop -1 -i 'https://www.youtube.com/watch?v=KQ3Y0wbAtHE' -c:v libx264 -b:v 600k -r 25 -s 640x360 -c:a aac -ab 64k -ac 1 -ar 44100 -vf setpts=N/FRAME_RATE/TB -af asetpts=N/SR/TB -f flv rtmps://dc5-1.rtmp.t.me/s/1232369957:_ZNvpDHr6Fi2TTx5ZVf-lA
done
