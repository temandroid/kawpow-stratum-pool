#!/bin/bash

echo YES OR NO?
read -p "Have you ran install daemon first without problems?" -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi


clear
echo 
echo
echo
echo ###########Attempting to install pool Please check for errors and correct where needed#########
echo 
echo
echo
echo
echo
sleep 3

sudo apt-get update && sudo apt-get upgrade
cd ~
git config --global http.https://gopkg.in.followRedirects true
git clone https://github.com/Bitcrusher369/rvn-kawpow-pool.git
cd rvn-kawpow-pool/
./install.sh
sudo apt install npm
npm update
npm install sha3@2.1.2
sudo chown -R $USER:$GROUP ~/.nvm
npm config delete prefix`
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm use --delete-prefix v8.1.4 --silent






