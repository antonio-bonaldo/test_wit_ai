#!/bin/bash

if [ "$1" = "" ]; then
	echo "usage: $0 filenamebase"
else 
	bash -c "parecord $1.flac --file-format=flac --rate=16000"
fi




