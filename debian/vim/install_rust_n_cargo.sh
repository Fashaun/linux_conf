#!/bin/bash - 
#===============================================================================
#
#          FILE: install_rust_n_cargo.sh
# 
#         USAGE: ./install_rust_n_cargo.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Shaun Lin (), 
#  ORGANIZATION: 
#       CREATED: 09/03/2018 21:40
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# Reference: https://doc.rust-lang.org/cargo/getting-started/installation.html

curl -sSf https://static.rust-lang.org/rustup.sh | sh
