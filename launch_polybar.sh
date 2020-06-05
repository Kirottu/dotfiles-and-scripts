#!/bin/sh

killall -q polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

export TRAY_POS=none

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ $m == 'HDMI-2' ]; then
       export TRAY_POS=right 
       MONITOR=$m polybar --reload example &
       export TRAY_POS=none
    else
       MONITOR=$m polybar --reload example &
    fi
  done
else
  polybar --reload example &
fi
unset TRAY_POS
