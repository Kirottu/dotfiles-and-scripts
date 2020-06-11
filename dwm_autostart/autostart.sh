#!/bin/bash

/home/kirottu/.config/scripts/setscreenmode.sh
nitrogen --restore &
/usr/libexec/polkit-mate-authentication-agent-1 &
# lxsession &
dunst &
udiskie -ans &
# alarm-clock-applet &
chromium --app="https://discord.com/app" &
steam &
lutris &
xss-lock --transfer-sleep-lock -- /home/kirottu/.config/scripts/lock.sh &
/home/kirottu/.config/scripts/launch_polychromatic-tray-applet.sh &
nm-applet &
setxkbmap fi
dwmblocks &
#/home/kirottu/.config/scripts/dwm_statusline.sh &
