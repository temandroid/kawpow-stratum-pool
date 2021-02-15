#!/bin/bash

echo YES OR NO?
read -p "Is this run without root and as user pool with sudo privs?" -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

clear
echo 
echo
echo
echo ###########Attempting to install coin daemon Please check for errors and correct where needed#########
echo 
echo
echo
echo
echo
sleep 3
echo installing wget if not already
sudo apt install wget
sleep 1
echo downloading raven core this may be outdated by the time you install please check
wget https://github.com/RavenProject/Ravencoin/releases/download/v4.3.2.1/raven-4.3.2.1-x86_64-linux-gnu.zip
sudo apt install unzip
unzip raven-4.3.2.1-x86_64-linux-gnu.zip
sudo mv /home/pool/linux/raven-4.3.2.1-x86_64-linux-gnu.tar.gz /home/pool
sudo rm -rf /home/pool/__MACOSX
sudo rm -rf /home/pool/linux
sudo rm -rf /home/pool/raven-4.3.2.1-x86_64-linux-gnu.zip
tar -xf raven-4.3.2.1-x86_64-linux-gnu.tar.gz
rm raven*gz
cd raven-4.3.2.1/bin
mkdir -p ~/.raven/
touch ~/.raven/raven.conf
echo "rpcuser=user1" > ~/.raven/raven.conf
echo "rpcpassword=pass1" >> ~/.raven/raven.conf
echo "prune=550" >> ~/.raven/raven.conf
echo "daemon=1" >> ~/.raven/raven.conf
echo
echo
echo install finished check for errors
echo
echo cd cd raven-4.3.2.1/bin
echo
echo and run command below to start coin daemon
echo
echo ./ravend
echo
echo once started it will generate a wallet addres to get the address run below command. save this as you will need it on the configuration.
echo
echo ./raven-cli getnewaddress
echo
sleep 1
echo script exiting







