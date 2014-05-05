#!/bin/bash

Xephyr -ac -br -retro -noreset -screen 1024x768 -keybd ephyr,xkbrules=evdev,xkbmodel=evdev,xkblayout=fr,xkbvariant=bepo :2.0 &
sleep 1
DISPLAY=:2.0 awesome -c /home/vincent/orgd/projects/cfg/.config/awesome/rc.lua
