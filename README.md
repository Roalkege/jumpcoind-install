# jumpcoind-install
This is a skript to install the jumpcoind on a ubuntu 16.04 vps

First you have to clone this repo `git clone https://github.com/Roalkege/jumpcoind-install.git`

Then open the folder `cd jumpcoind-install/`

Next you have to make execute the skript `chmod 777 jumpcoind_install.sh`

Finally you have to execute the script `./jumpcoind_install.sh`

___

After a time you need to enter a RpcUser and a RpcPassword.

Save the answers when you want to setup the [Multicoin Faucet] (https://github.com/WlanWerner/Multicoin-Faucet)

___

Then open a new console and close the old one.

Now type `./jumpcoind getblockcount` to see how many blocks are loaded or  `./jumpcoind getconnectioncount` for the number of connections to your wallet.
