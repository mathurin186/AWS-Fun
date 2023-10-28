#! /bin/bash

sudo add-apt-repository ppa:cappelikan/ppa
sudo apt update
sudo apt install mainline

# Use mainline --list to list available kernels 
# to install the 5.15 kernel version, use:
#      mainline --install 5.15.0
