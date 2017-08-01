#!/bin/bash - 
#===============================================================================
#
#          FILE: setup_git.sh
# 
#         USAGE: ./setup_git.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Shaun (), 
#  ORGANIZATION: 
#       CREATED: 08/ 1/2017 13:48
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


cp $(pwd)/../mac_os/iTerm/gitconfig /etc/gitconfig

