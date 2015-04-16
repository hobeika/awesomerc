#!/bin/bash

file=`cat ${HOME}/.fehbg | sed -e "s@.*'\(/.*\)'@\1@g"`
width=`xrandr --current | grep current | sed -e "s/Screen.*current \(.*\) x \(.*\), maximum.*/\1/"`
height=`xrandr --current | grep current | sed -e "s/Screen.*current \(.*\) x \(.*\), maximum.*/\2/"`
width=$(($width*90/100))
height=$(($height*90/100))
echo ${width}x${height}
display -geometry ${width}x${height} "${file% }"
