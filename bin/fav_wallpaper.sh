#!/bin/bash

file=`cat .fehbg | sed -e "s@.*/\(.*\)'@\1@g"`
fullpath_to_file=`sed -e "s/.*'\(.*\)'/\1/" .fehbg`
fav_directory="`dirname "${fullpath_to_file}"`/fav"
ln -s "${fullpath_to_file% }" "${fav_directory}"
notify-send -t 0 "Favorites" "${file} has been added to favorites."
