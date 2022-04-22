#!/bin/bash
# Update system
sudo apt-get -y update 
sudo apt-get -y upgrade

# Install Tmux
sudo apt install tmux
# Install NeoVim
sudo apt-get -y install neovim

# Install Nvm
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
nvm install --lts

