#!/bin/bash -i
# Update system
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get -y update 
sudo apt-get -y upgrade
sudo apt install -y curl git

# Install keyboard Layout
sudo apt install -y ibus-hangul ibus-pinyin

# Install Tmux
sudo apt -y install tmux
cp .tmux.conf ~/
# Tmux ide split Screen
sudo mv ide /usr/bin/

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
cp -a ./ "$VIM_DIR"/
echo alias vi="nvim">>~/.bashrc

# Install gitmoji
npm i -g gitmoji-cli

