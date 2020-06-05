#!/bin/sh

scrot -o -s '/tmp/%F%T$wx$h.png' -e 'xclip -selection clipboard -target image/png -i $f'
if [ -n "$f" ]; then
	notify-send 'Screenshot copied to clipboard'
	rm $f
fi
