echo "--------------- Chrome ---------------"
mkdir download
cd download
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i *.deb
cd ..
rm -r download