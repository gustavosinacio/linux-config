echo "Configuring nvm ----------------------------------------------------------"
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# echo '
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# ' >> ~/.zshrc

echo "Configuring yarn ---------------------------------------------------------"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update
sudo apt install --no-install-recommends yarn -y
yarn --version


echo "Configuring insomnia -----------------------------------------------------"
# Add to sources
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list

# Add public key used to verify code signature
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -

# Refresh repository sources and install Insomnia
sudo apt update
sudo apt install insomnia -y 

curl https://github.com/egoist/devdocs-desktop/releases/download/v0.6.9/DevDocs_0.6.9_amd64.deb
sudo dpkg -i *.deb
rm *.deb

echo "Configuring Docker CE ----------------------------------------------------"
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
sudo apt update
apt-cache search docker-ce
sudo apt install docker-ce docker-ce-cli containerd.io

sudo groupadd docker
sudo usermod -a -G docker $USER

sudo snap install postbird

echo 'RESTART COMPUTER FOR CHANGES TO TAKE EFFECT ------------------------------' 