#!/bin/bash


file="ramon.txt"

if [ -f "$file" ]; then
 echo "The file '$file' exists"
else 
 echo "The file '$file' does not exists"
fi
