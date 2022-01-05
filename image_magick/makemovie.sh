#!/bin/bash

# convert -list font

IMAGE_DIR="movie"
DIR=${PWD}

cd ${IMAGE_DIR}
ls *.png > ../list
cd ${DIR}


# add text to figure
t=0
while read line
do
    f=`echo ${line} | tr '.' ' ' | awk '{print $1}'`
    t=$(expr $t + 1)

    echo "frame: ${f} / time: ${t}"

    convert -resize 50% -font Nimbus-Mono-Bold -pointsize 32 \
            -gravity northwest -fill "black" \
            -./${IMAGE_DIR}/${f}.png _${f}.png
done < list

# make movie
#convert -delay 10 -loop _s.*png md.gif
#ffmpeg -i _snapshot%4d.png -t 10 q:v 0 -vcodec mjpeg -s 480x480 md.avi
#ffmpeg -i _snapshot%4d.png -t 10 q:v 0 -s 480x480 md.avi
ffmpeg -i _snapshot%4d.png -r 15 q:v 0 md.avi   # default
#ffmpeg -i _snapshot%4d.png -r 10 q:v 0 md.avi


rm list _s*.png