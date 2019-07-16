#!/bin/bash

echo "configuring ranger"
# sudo apt install ranger

file=./rc.conf
target=~/.config/ranger/rc.conf
if [ -e $target ]
then
  echo "$target found. Deleting file..."
  rm $target
else 
  echo "$target not found. Creating initial config"
  ranger --copy-config=all
fi

echo "Creating link between $file and $target"
ln $file $target
