#!/bin/bash

/home/kirottu/.config/scripts/setscreenmode.sh &
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
# lxsession &
dunst &
udiskie -ans &
# alarm-clock-applet &
# chromium --app="https://discord.com/app" &
discord &
steam &
lutris &
xss-lock --transfer-sleep-lock -- /home/kirottu/.config/scripts/lock.sh &
#/home/kirottu/.config/scripts/launch_polychromatic-tray-applet.sh &
nm-applet &
setxkbmap fi &
xsetroot -cursor_name left_ptr &
#/home/kirottu/.config/scripts/dwm_statusline.sh &
nitrogen --restore &
dwmblocks &
