#!/bin/bash
status=`acpi | grep Discharging`
res=$?
if [ $res -eq 0 ]; then
    battery=`echo $status | sed -e "s/Battery.*Discharging, \([0-9]*\)%.*/\1/"`
    if [ $battery -lt 15 ]; then
        notify-send -t 3000 -u critical "Battery Low!!!"
    fi
fi
