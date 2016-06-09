#!/usr/bin/env bash

GIT_REPOSITORY="/home/julien/Speedtests"
FILE="$GIT_REPOSITORY/data/speedtest_$(date +%d.%m.%Y-%T).txt"

wget -q --spider http://google.com && \
echo "Online. Doing a speed test..." && \
/usr/bin/speedtest --simple > $FILE && \
cd $GIT_REPOSITORY && \
git pull && \
git add data && \
git commit -am "Automatically added speedtest." && \
git push

