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
source ~/.bashrc
nvm install --lts

# Install Plug-vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

VIM_DIR=~/.config/nvim
mkdir -p "$VIM_DIR"
cp init.vim "$VIM_DIR"/
