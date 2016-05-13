#!/bin/bash

if [ "$1" = "" ]; then
	echo "usage: $0 filename.flac"
else 

	fbname=$(basename "$1" .flac)

	myCommand="vlc -I dummy $1 \":sout=#transcode{vcodec=none,acodec=mp3,ab=128,channels=2,samplerate=44100}:std{access=file{no-overwrite},mux=mp3,dst='$fbname.mp3'}\" vlc://quit"

	echo $myCommand

	# execute command

	bash -c  "$myCommand"

	
fi












