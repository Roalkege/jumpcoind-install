#!/bin/sh
#Thanks to WlanWerner(https://github.com/WlanWerner)
#install requirements
sudo apt-get update 
sudo apt-get upgrade -y
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:bitcoin/bitcoin -y
sudo apt-get update
sudo apt-get install unzip nano git build-essential libtool autotools-dev autoconf automake libssl-dev libboost-all-dev libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libqt4-dev libprotobuf-dev protobuf-compiler libqrencode-dev -y
sudo apt-get install git qt5-default qt5-qmake qtbase5-dev-tools qttools5-dev-tools build-essential libboost-dev libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev libdb++-dev libminiupnpc-dev libqrencode-dev -y
#create folder + get jumpcoind + execute jumpcoind
mkdir /root/.jumpcoin
wget https://github.com/Jumperbillijumper/jumpcoin/releases/download/1/jumpcoind
mv jumpcoind /root/jumpcoind
cd ~
chmod 777 jumpcoind
./jumpcoind
#rpcuser + rpcpassword
echo Save your answers if you want to set up a Faucet 
read -p "rpcuser: " user
read -p "rpcpassword: " password
#create .conf
cat >/root/.jumpcoin/jumpcoin.conf << EOF
addnode=62.138.238.45
addnode=93.186.200.171
addnode=93.243.70.137
addnode=159.69.14.216
addnode=185.216.214.17
addnode=159.69.14.216
server=1
rpcuser=$user
rpcpassword=$password
maxconnections=12
EOF
cd ~
#execute jumpcoind
./jumpcoind -deamon
