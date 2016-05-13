#!/bin/bash

# access keys

KEY_EN=
KEY_IT=
KEY_FR=
KEY_DE=


if [ "$2" = "" -o "$2" = "EN" ]; then
	key=$KEY_EN
else 
	kname="KEY_"$2
	key="${!kname}";
fi


fname=$1

echo $key



echo $fname


myCommand="curl -XPOST 'https://api.wit.ai/speech?v=20160513' -i -L  -H \"Authorization: Bearer $key\"   -H \"Content-Type: audio/mpeg3\"  --data-binary \"@$fname\""


echo $myCommand

# execute command

bash -c  "$myCommand"


