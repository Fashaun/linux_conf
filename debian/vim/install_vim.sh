#!/bin/bash - 
#===============================================================================
#
#          FILE: install_vim.sh
# 
#         USAGE: ./install_vim.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 08/19/2018 03:08
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

cd ~

echo "==== Install dependency library ===="

sudo apt install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev \
    ruby-dev lua5.1 liblua5.1-dev libperl-dev git python2.7-dev python3.5-dev


echo "==== Remove old vim ===="

sudo apt remove vim vim-runtime gvim

echo "==== Clone vim source ===="

#git clone https://github.com/vim/vim.git ~/vim

cd ~/vim

check_python2_config_dir="$(dir /usr/lib/python2.7/config-x86_64-linux-gnu)"
ret="$?"
check_python3_config_dir="$(dir /usr/lib/python3.5/config-3.5m-x86_64-linux-gnu)"
ret="$ret$?"

[ "$ret" != "00" ] && echo "==== Please check python config dir ====" && exit 1

echo "==== Configure vim ===="
# pay attention here check directory correct
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local

echo "==== Compile vim ===="
# TODO: compile error
make VIMRUNTIMEDIR=/usr/local/share/vim/vim81

[ "$?" != 0 ] && echo "==== make vim fail ====" && exit
echo "==== Install vim ===="
# Install
sudo apt install checkinstall
cd ~/vim
sudo checkinstall
# Uninstall
#dpkg -r vim

# Set vim as default editor

echo "==== Set vim as default editor by update-alternatives===="
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim
