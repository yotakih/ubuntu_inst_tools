#! /bin/bash

#users directory 
LANG=C xdg-user-dirs-gtk-update

#strace
apt-get install strace
#ltrace
apt-get install ltrace
#radare2
mkdir ~/radare2/
git clone https://github.com/radare/radare2 
cd radare2
sys/install.sh
#ghex
apt-get install ghex
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
apt-get install xsel
echo "alias pbcopy='xsel --clipboard --input'">>~/.bashrc
#rp
wget https://github.com/downloads/0vercl0k/rp/rp-lin-x64 -O $HOME/bin/rp
#nodejs
apt-get install nodejs
#npm
apt-get install npm
#n
npm -g install n
#node lst version install
n lts
#socat
apt-get install socat
#volatility
apt-get install volatility
