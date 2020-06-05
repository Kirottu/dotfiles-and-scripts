#!/bin/bash

POWERMENU=$(echo -e "suspend\nreboot\nshutdown")

EXEC=$(echo $POWERMENU | dmenu)

if [ -z "$EXEC" ]; then
	case $EXEC in
		"suspend") loginctl lock-session && sudo zzz;;
		"reboot") sudo reboot;;
		"shutdown") sudo shutdown -h now;;
		*) echo "Not a command";;
	esac
fi
