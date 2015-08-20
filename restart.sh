#!/bin/bash -x
# start the appropriate signage script
# crontab:
# 1 0 * * * ~/restart.sh
# 30 14 * * Sun ~/restart.sh
# @reboot sleep 30 && /restart.sh

killall QuartzComposerPlayer
sleep 2

script="Atrium Daily Schedule Google calendar.qtz"
weekday=`date +%a`
hour=`date +%H`
if [ "$weekday" = "Sat" ]; then
    script="Sunday Countdown.qtz"
elif [ "$weekday" = "Sun" ]; then
    if [ "$hour" -lt "14" ]; then
        script="Sunday Countdown.qtz"
    fi
fi

echo "`date` starting $script" >> restart.log

cd ~/Dropbox/TheAtriumDaily
QuartzComposerPlayer\ 2.app/Contents/MacOS/QuartzComposerPlayer "$script" &
