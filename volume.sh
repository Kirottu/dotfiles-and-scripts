#!/bin/bash

case $1 in
  "up")
	  pactl set-sink-volume @DEFAULT_SINK@ +2% && pkill -RTMIN+10 dwmblocks
    ;;
  "down")
	  pactl set-sink-volume @DEFAULT_SINK@ -2% && pkill -RTMIN+10 dwmblocks
    ;;
  "toggle")
	  pactl set-sink-mute @DEFAULT_SINK@ toggle && pkill -RTMIN+10 dwmblocks
    ;;
  "*")
    echo "Invalid argument"
    ;;
esac
