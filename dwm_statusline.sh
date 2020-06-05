#!/bin/bash

# Formatting

SEPARATOR="//"

# Modules

function modules() {
	DATE=$(date +"%d-%m-%Y // %R")
	MEMORY="RAM: $(free -h | awk '/Mem:/ {print $3 "/" $2}')"
	DISK="SSD: $(df -h /dev/sda2 | grep /dev/sda2 | awk '{print $3 "/" $2 " (" $4 ")"}')"
	VOLUME="VOL: $(pactl list sinks | grep 'volume: front-left:' | awk '{print $5}')"
#	CPUTEMP="CPU: $(sensors | awk '/Tdie/ {print $2}')"
	GPUTEMP="GPU: $(sensors | awk '/edge/ {print $2}')"
	CPU="CPU: $(top -b -n2 -p 1 | fgrep "Cpu(s)" | tail -1 | awk -F'id,' -v prefix="$prefix" '{ split($1, vs, ","); v=vs[length(vs)]; sub("%", "", v); printf "%s%.1f%%\n", prefix, 100 - v }')/$(sensors | awk '/Tdie/ {print $2}')"
}

# Separator name shortened for conviniency
S=$SEPARATOR

while true; do
	modules
	xsetroot -name "$GPUTEMP $S $MEMORY $S $CPU $S $VOLUME $S $DISK $S $DATE"
done
