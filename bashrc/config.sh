# TODO: check if files exist before deleting
clear
echo "Configuring .bashrc"

file=./bashrc
target=~/.bashrc
aliasesFile=./bash_aliases
targetAliases=~/.bash_aliases

if [ -e $target ]
then
  echo "$target found. Deleting file..."
  sudo rm $target
else 
  echo "$target not found."
fi
echo "Creating link between $file and $target"
sudo ln $file $target

if [ -e $targetAliases ]
then
  echo "$targetAliases found. Deleting file..."
  sudo rm $targetAliases
else 
  echo "$targetAliases not found."
fi
echo "Creating link between $aliasesFile and $targetAliases"
sudo ln $aliasesFile $targetAliases