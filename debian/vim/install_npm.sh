#!/bin/bash - 
#===============================================================================
#
#          FILE: install_npm.sh
# 
#         USAGE: ./install_npm.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 09/03/2018 21:33
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

version="$1"
nvm install "$version"
# Add npm and node path to environment
nvm use "$version"
