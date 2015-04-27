#!/bin/bash

file=`cat ${HOME}/.fehbg | sed -e "s@.*'\(/.*\)'@\1@g"`
grep -q bg-fill ${HOME}/.fehbg
res=$?
if [ ${res} -eq 0 ];then
    # If it is filled, we max it
    feh --bg-max "${file% }"
    notify-send "Wallpaper setting" "Maxed"
else
    # If it is maxed, we fill it
    feh --bg-fill "${file% }"
    notify-send "Wallpaper setting" "Filled"
fi
