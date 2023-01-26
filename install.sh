#!/bin/bash

# to install nvim using this script execute the following command on target maching:
# curl https://raw.githubusercontent.com/zeionara/nvim-configs/master/install.sh -s | bash 

quit () {
    echo $1
    exit 1
}

url=${1:-https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb}

echo downloading from $url...

wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb || quit 'cannot download file'

echo installing...

sudo apt install ./nvim-linux64.deb || quit 'cannot install nvim'
rm ./nvim-linux64.deb || quit 'cannot remove downloaded file'

echo fetching repo...

git clone https://github.com/zeionara/nvim-configs.git $HOME/.config/nvim_ || quit 'cannot clone repo'

echo installing package manager...

mkdir $HOME/.config/nvim || quit 'cannot create config directory'
ln $HOME/.config/nvim_/lua/plugins.lua $HOME/.config/nvim/init.lua || quit 'cannot create link to plugins list'

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim || quit 'cannot install package manager'

echo 'installing plugins...'

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerInstall' || quit 'cannot install plugins'
# nvim --headless +PackerInstall +q || quit 'cannot install plugins'

echo 'configuring neovim...'

rm -rf $HOME/.config/nvim || quit 'cannot remove temporary config'
mv $HOME/.config/nvim_ $HOME/.config/nvim || quit 'cannot configure nvim'

echo 'setting up ale...'

mkdir -p ~/.local/share/nvim/site/pack/git-plugins/start || quit 'cannot create folders for ale'
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.local/share/nvim/site/pack/git-plugins/start/ale || quit 'cannot clone ale'

echo 'finished installing nvim'
