#!/bin/sh

killall -q polychromatic-tray-applet

while pgrep -u $UID -x polychromatic-tray-applet > /dev/null; do sleep 1; done

polychromatic-tray-applet
