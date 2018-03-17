#! /bin/bash

homedir=$(pwd)

#users directory 
#LANG=C xdg-user-dirs-gtk-update

#strace
apt install strace
#ltrace
apt install ltrace
#radare2
mkdir ~/radare2/
git clone https://github.com/radare/radare2 
cd radare2
sys/install.sh
cd $homedir
#ghex
apt install ghex
#peda
git clone https://github.com/zachriggle/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
#checksec
export PATH=$HOME/bin:$PATH
mkdir $HOME/bin
wget https://github.com/slimm609/checksec.sh/archive/1.6.tar.gz
tar zxvf 1.6.tar.gz
cp checksec.sh-1.6/checksec $HOME/bin/checksec.sh
#pbcopy
apt install xsel
echo "alias pbcopy='xsel --clipboard --input'">>~/.bashrc
#rp
wget https://github.com/downloads/0vercl0k/rp/rp-lin-x64 -O $HOME/bin/rp
#nodejs
apt install nodejs
#npm
apt install npm
#n
npm -g install n
#node lst version install
n lts
#socat
apt install socat
#volatility
apt install volatility
#sqlite3
apt install sqlite3
#john
mkdir ~/john/
cd ~/john/
wget http://www.openwall.com/john/j/john-1.8.0-jumbo-1.tar.xz
xz -dc john-1.8.0-jumbo-1.tar.xz | tar xfv - 
cd ~/john/john-1.8.0-jumbo-1/src/
.configure && make
cd $homedir

