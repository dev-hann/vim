# Update system
sudo apt-get -y update && apt-get -y upgrade
sudo apt -y update && apt -y upgrade

# Install Tmux
sudo apt install tmux
# Install NeoVim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get -y update && apt-get -y upgrade
sudo apt-get -y install neovim

# Install Nvm
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
nvm install --lts

