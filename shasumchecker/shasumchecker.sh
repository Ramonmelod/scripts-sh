#!/bin/bash

text=$(awk '{ print $1 }' bash-logo.txt) # returns the first line block

sha256sum=$(sha256sum bash-icon.svg | awk '{print $1}') # this pipe's propose is to send only the first line block

if [ "$sha256sum" == "$text" ]; then

echo "O arquivo é original!"
else

echo "O arquivo não é original!"

fi


















