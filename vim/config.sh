#!/bin/bash

echo "configuring vimrc"
sudo apt install vim

file=./vimrc
target=~/.vimrc
if [ -e $target ]
then
  echo "$target found. Deleting file..."
  sudo rm $target
else 
  echo "$target not found."
fi

echo "Creating link between $file and $target"
sudo ln $file $target
