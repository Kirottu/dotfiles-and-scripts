#!/bin/sh

scrot -o -d 2 -m '/tmp/%F%T$wx$h.png' -e 'xclip -selection clipboard -target image/png -i $f && rm $f'
notify-send 'Screenshot copied to clipboard'
