#!/bin/sh

# Get gamemode status
GAMEMODE_PREFIX='gamemode: '
GAMEMODE_STATUS=$(gamemoded --status | cut -d " " -f 3)
GAMEMODE_STATUS_FINAL="$GAMEMODE_PREFIX $GAMEMODE_STATUS"

# Output the modified status
echo $GAMEMODE_STATUS_FINAL
