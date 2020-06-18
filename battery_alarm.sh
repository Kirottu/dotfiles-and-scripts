#!/bin/bash

CURRENT_PERCENTAGE=$(cat /sys/class/net/enp7s0/speed)

if [ "$CURRENT_PERCENTAGE" > 90 ]; then
	echo "Oi"
fi
