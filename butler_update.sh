#!/bin/bash

if [ -z $1 ]; then
	echo "No version specified"
	exit
fi
cd ~/Documents

~/.config/itch/broth/butler/versions/*/butler push ./perttishooter_linux kirottu/perttishooter:linux-64 --userversion $1
~/.config/itch/broth/butler/versions/*/butler push ./perttishooter_windows.exe kirottu/perttishooter:windows-64 --userversion $1
