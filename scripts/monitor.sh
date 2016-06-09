#!/usr/bin/env bash

GIT_REPOSITORY="/home/julien/Speedtests"
FILE="$GIT_REPOSITORY/data/speedtest_$(date +%d.%m.%Y-%T).txt"

wget -q --spider http://google.com && \ # Check if connected to internet.
echo "Online. Doing a speed test..." && \
/usr/bin/speedtest --simple > $FILE && \ # Do the speed test.
cd $GIT_REPOSITORY && \
git pull && \ # Pull eventual changes to the repository.
git add data && \ # Add all new files in data directory.
git commit -am "Automatically added speedtest." && \ # Commit new files.
git push

