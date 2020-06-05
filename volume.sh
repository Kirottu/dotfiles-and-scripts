#!/bin/bash

if [ -z "$1" ]; then
	echo "No parameter provided"
elif [ "$1" == "up" ]; then
	pactl set-sink-volume @DEFAULT_SINK@ +5% && pkill -RTMIN+10 dwmblocks
elif [ "$1" == "down" ]; then	
	pactl set-sink-volume @DEFAULT_SINK@ -5% && pkill -RTMIN+10 dwmblocks
elif [ "$1" == "toggle" ]; then
	pactl set-sink-mute @DEFAULT_SINK@ toggle
fi
