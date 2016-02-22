#!/bin/bash

TMP="/tmp/titles.txt" 
URL="http://dikkenek-le-soundboard.herokuapp.com/"

curl $URL | grep "data-sound" | cut -d \" -f 2 > $TMP

while read p; do
  curl -O $URL"mp3/"$p".mp3"
done <$TMP
