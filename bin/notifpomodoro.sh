#!/bin/bash

ongoingpomodoro=`grep micro_pause ${HOME}/.workrave/state | cut -d ' ' -f 3`
pomodoro=1500 # 25 minutes
restpomodoro=$(($pomodoro-$ongoingpomodoro))

notify-send "Pomodoro restant" "`printf "%02d" $(($restpomodoro/60))`:`printf "%02d" $(($restpomodoro%60))`"
