#!/bin/bash - 
#===============================================================================
#
#          FILE: install_go.sh
# 
#         USAGE: ./install_go.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 09/03/2018 20:59
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# download source
# tar source to location
tar -C /usr/local -xzf go1.11.linux-amd64.tar.gz

# Add environment to bashrc

