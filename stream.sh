#!/bin/bash

set -e

while true
do
ffmpeg -stream_loop -1 -re -i https://drive.google.com/uc?export=download&id=1Asy0VKnyrva7uVzXJMw3FTdmMUPQtgav
-c:v libx264 
-preset veryfast 
-b:v 3500k 
-maxrate 3500k 
-bufsize 7000k 
-pix_fmt yuv420p 
-g 50 
-c:a aac 
-b:a 160k 
-ac 2 
-ar 44100 
-f flv rtmps://dcx-y.rtmp.t.me/s/926739692:_Czm-Fbv5bbF2Npo7YaDLg
done
