#!/bin/bash

echo "configuring profile"

file=./profile
target=~/.profile
if [ -e $target ]
then
  echo "$target found. Deleting file..."
  sudo rm $target
else 
  echo "$target not found."
fi

echo "Creating link between $file and $target"
sudo ln $file $target
