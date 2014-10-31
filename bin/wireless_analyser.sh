#!/bin/sh

INTERFACE=$1

if [ -z "$1" ]
then
  echo "Usage: $0 wireless_interface"
  exit 1
elif ! iwconfig $1 >/dev/null 2>&1
then
  echo "$1: No such device"
  exit 1
fi

channel_info=$(iw dev $1 scan |   sed -rn '/SSID/{s/\s*SSID:\s(.*)/\1/;h};/DS Parameter set/{s/.*DS Parameter set:\s*channel ([0-9]*)/\1/;H;x};s/(.*)\n(.*)/\2:\1/p')

echo "$channel_info" | tr ':' ' ' | while read channel ssid
do
  if [ -z "$ssid" ]
  then
    ssid="<hidden>"
  fi
  printf "SSID:\t%s\t(channel %s)\n" "$ssid" "$channel"
done

printf "\n\n"

echo "$channel_info" | cut -d':' -f1  | sort -h | uniq -c | while read count channel
do
  size="$(printf '=%0.s' $(seq 1 $count))"
  printf "%s:\t%s\n" "$channel" "$size"
done
