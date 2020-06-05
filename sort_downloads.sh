#!/bin/bash

TARBALLS="$HOME/Downloads/tarballs"
IMAGES="$HOME/Downloads/images"
ISOS="$HOME/Downloads/isos"
ARCHIVES="$HOME/Downloads/archives"
AUDIO="$HOME/Downloads/audio"
MISC="$HOME/Downloads/misc"
DOCUMENTS="$HOME/Downloads/documents"
DOWNLOADS="$HOME/Downloads"

IFS=$'\n'

function dirchecks() {
	if ! [ -d "$TARBALLS" ]; then
		mkdir $TARBALLS
	fi
	if ! [ -d "$IMAGES" ]; then
		mkdir $IMAGES
	fi
	if ! [ -d "$ISOS" ]; then
		mkdir $ISOS
	fi
	if ! [ -d "$ARCHIVES" ]; then
		mkdir $ARCHIVES
	fi
	if ! [ -d "$AUDIO" ]; then
		mkdir $AUDIO
	fi
	if ! [ -d "$MISC" ]; then
		mkdir $MISC
	fi
	if ! [ -d "$DOCUMENTS" ]; then
		mkdir $DOCUMENTS
	fi
}

function movefiles() {
	cd $DOWNLOADS
	for i in $(ls | grep .tar); do
		mv "$i" $TARBALLS
	done
	for i in $(ls | egrep '.jpg|.png|.jpeg'); do
		mv "$i" $IMAGES
	done
	for i in $(ls | egrep '.zip|.7z|.rar'); do
		mv "$i" $ARCHIVES
	done
	for i in $(ls | egrep '.mp3|.ogg|.wav'); do
		mv "$i" $AUDIO
	done
	for i in $(ls | egrep '.odt|.docx'); do
		mv "$i" $DOCUMENTS
	done
	for i in $(ls | grep .iso); do
		mv "$i" $ISOS
	done
	for i in $(ls); do
		if ! [ -d $i ]; then
			mv "$i" $MISC
		fi
	done

}

case $1 in
	--dirchecks) dirchecks;;
esac

movefiles
