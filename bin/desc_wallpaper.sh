#!/bin/bash

file=`cat .fehbg | sed -e "s@.*/\(.*\)'@\1@g"`
notify-send -t 0 ${file} "$(< `echo /home/vincent/.config/awesome/wallpapersdoc/${file%.jpg }.txt`)"
