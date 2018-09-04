#!/bin/bash - 
#===============================================================================
#
#          FILE: install_nvm.sh
# 
#         USAGE: ./install_nvm.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 09/03/2018 21:08
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
