#!/bin/bash

SERVER_MAPS="ls -l $HOME/.config/server/.steam/steamcmd/tfserver/tf/maps | awk '{print $9}'"
LOCAL_MAPS="ls -l $HOME/.local/share/Steam/steamapps/common/Team\ Fortress\ 2/tf/maps | awk '{print $9}'"

diff -q <($SERVER_MAPS) <($LOCAL_MAPS)
