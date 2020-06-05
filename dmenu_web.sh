#!/bin/bash

HISTORY=$(cat ./search_history)
SEARCH=$(echo "$HISTORY" | dmenu | sed 's/ /+/g')
HISTORY_CHECK=$(echo "$HISTORY" | grep "$SEARCH")


if [ -n "$SEARCH" ]; then
	xdg-open "https://duckduckgo.com/?q=$SEARCH"
	if [ -z "$HISTORY_CHECK" ]; then
		echo $SEARCH >> ./search_history
	fi
fi
