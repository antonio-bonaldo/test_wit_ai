#!/bin/bash

if [ "$1" = "" ]; then
	echo "usage: $0 filenamebase [TAG]"
	exit
fi


if [ "$2" = "" ]; then
	fbname=$1	
else
	fbname=$2_$1
fi


echo "fbname : $fbname"


./bin/record.sh $fbname

./bin/tomp3.sh $fbname.flac

rm $fbname.flac

./bin/wit.sh $fbname.mp3 $2



