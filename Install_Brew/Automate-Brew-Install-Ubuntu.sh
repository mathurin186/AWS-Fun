#!/bin/bash


"""
Fresh install of brew in a CentOS instance.
"""

# Update, then install build essentials & Git
sudo apt update -y
sudo apt-get install build-essential
sudo apt-get install git -y

# Install Brew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to your PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Verify that brew installed correctly
brew doctor
