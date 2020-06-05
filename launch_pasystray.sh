#!/bin/sh

killall -q pasystray

while pgrep -u $UID -x pasystray > /dev/null; do sleep 1; done

pasystray
