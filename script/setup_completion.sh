#!/bin/bash - 
#===============================================================================
#
#          FILE: setup_completion.sh
# 
#         USAGE: ./setup_completion.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/08/2018 03:50
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

cp ../completions/docker-completion.bash /etc/bash_completion.d

