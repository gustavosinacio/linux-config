sudo ./apt-install

sudo gsettings set org.gnome.settings-daemon.peripherals.keyboard numlock-state 'on'

cd bashrc
chmod 744 config.sh
./config.sh
cd ..

cd profile
chmod 744 config.sh
./config.sh
cd ..

cd ranger
chmod 744 config.sh
./config.sh
cd ..

cd vim
chmod 744 config.sh
./config.sh
cd ..

cd zsh
chmod 744 config.sh
./config.sh
cd ..

