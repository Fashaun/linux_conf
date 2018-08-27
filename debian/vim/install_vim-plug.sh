#!/bin/bash - 
#===============================================================================
#
#          FILE: install_vim-plug.sh
# 
#         USAGE: ./install_vim-plug.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 08/25/2018 10:06
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
