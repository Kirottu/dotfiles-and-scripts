#!/bin/bash

if type "xrandr"; then
	xrandr --newmode "1280x1024_75.00"  138.75  1280 1368 1504 1728  1024 1027 1034 1072 -hsync +vsync
	xrandr --newmode "1920x1080_75.00"  220.75  1920 2064 2264 2608  1080 1083 1088 1130 -hsync +vsync

  	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    		if [ $m == 'HDMI-A-0' ]; then
			xrandr --addmode $m "1920x1080_75.00"
			xrandr --output $m --mode "1920x1080_75.00"
			xrandr --output $m --primary
    		elif [ $m == 'HDMI-A-1' ]; then
			xrandr --addmode $m "1280x1024_75.00"
			xrandr --output $m --mode "1280x1024_75.00"
			xrandr --output $m --left-of HDMI-A-0
		fi
	done
fi
exit 0
