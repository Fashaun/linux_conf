#!/bin/bash - 
#===============================================================================
#
#          FILE: install_ycmd.sh
# 
#         USAGE: ./install_ycmd.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 08/27/2018 08:43
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# download via vim-plug

# Before install.py
    # install mono-xbuild for c# support for options in install.py
sudo apt-get install mono-xbuild
sudo apt-get install mono-devel
    # clang, cmake
    # python
    # nvm
    install_nvm.sh
    # npm
    install_npm.sh
    # go
    install_go.sh
# Add option to execute install.py
install.py --all
# setup .ycm_extra_conf.py in vimrc



