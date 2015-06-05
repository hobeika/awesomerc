#!/bin/bash

ongoingpomodoro=`grep micro_pause ${HOME}/.workrave/state | cut -d ' ' -f 3`
pomodoro=1500 # 25 minutes
ongoingperten=$(($ongoingpomodoro*10/$pomodoro))
restpomodoro=$(($pomodoro-$ongoingpomodoro))
restperten=$(($restpomodoro*10/$pomodoro))

echo -n "{"
if [ $ongoingperten -gt 0 ]; then
    printf "%0.s|" $(seq 1 $ongoingperten)
fi
if [ $restperten -gt 0 ]; then
    printf "%0.s " $(seq 1 $restperten)
fi
echo -n "}"
