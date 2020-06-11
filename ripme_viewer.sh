#!/bin/bash

RIPMEPATH="$HOME/.config/ripme/$1"
PICARRAY=()
PICARRAYSIZE=$(ls $RIPMEPATH | wc -l)

for i in `ls $RIPMEPATH`; do
	PICARRAY+=("$RIPMEPATH/$i")
done

while true; do
	feh -F -Z "${PICARRAY[$RANDOM % ${#PICARRAY[@]}]}" &
	sleep 5s
	pkill feh
done
