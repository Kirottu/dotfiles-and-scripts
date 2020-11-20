#!/bin/bash

SAVEPATH=$1
URL=$2

for line in $(curl $URL/filenames); do
	wget -O "$SAVEPATH/$line" "$URL/$line"
done
