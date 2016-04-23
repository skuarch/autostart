#!/bin/bash

sudo cpufreq-set -g performance
(sleep 4; yakuake) & 
(sleep 350; kdesudo -u root fstrim /) &

#SERVICE='chrome'
 
#if ps ax | grep -v grep | grep $SERVICE > /dev/null
#then
    #echo "$SERVICE service running, everything is fine"
#else
    #(sleep 30; google-chrome) & 
#fi

SERVICE='thunderbird'
 
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
    echo "$SERVICE service running, everything is fine"
else
    (sleep 300; thunderbird) & 
fi

(sleep 35; skype) & 
(sleep 40; skype-call-recorder) & 

cd /home/skuarch/applications/alarm/
./start.sh &

(sleep 50; slack)
