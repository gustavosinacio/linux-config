wget https://github.com/tonsky/FiraCode/releases/download/1.206/FiraCode_1.206.zip

unzip *.zip -d fira #->> => => <->

mkdir ~/.fonts

cp fira/ttf/* ~/.fonts 

fc-cache -f -v

rm -r fira

rm *FiraCode*

sudo apt install libxss1 libappindicator1 libindicator7 -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb
sudo apt install -f.
rm ./google-chrome*.deb

