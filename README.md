# test_wit_ai
bash script for testing wit.ai NLU models with voice input

## Prerequisites
The bash scripts included require: 

* `parecord`, to record audio from the microphone
* `vlc`, to convert the audio file in MP3 format
* `curl`, to send the audio file to wit.ai service

You will also need the access key for each NLU model you intend to test. Edit [bin/wit.sh](bin/wit.sh) and put you key in the variables named *KEY_<TAG>*. You will then specify the TAG on the command line when calling the *test_wit.sh* script.

## Usage
`./test_wit.sh recordin_name [TAG]`

