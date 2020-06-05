#!/bin/sh

SCRIPT=$(du -ha /home/kirottu/.config/scripts/ | cut -f2 | dmenu -l 30)

if [ -n "$SCRIPT" ]; then
	st -e nvim $SCRIPT
fi
