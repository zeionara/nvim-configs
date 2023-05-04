#!/bin/bash

# to install nvim using this script execute the following command on target maching:
# curl https://raw.githubusercontent.com/zeionara/nvim-configs/master/install.sh -s | bash 

quit () {
    echo $1
    exit 1
}

version=${NVIM_VERSION:-v0.8.3}
url=${NVIM_URL:-https://github.com/neovim/neovim/releases/download/$version/nvim-linux64.deb}
installer_path=${NVIM_FILE:-/tmp/neovim.deb}

echo downloading from $url to $installer_path...

wget $url -O $installer_path || quit 'cannot download file'

echo installing from $installer_path...

sudo apt install $installer_path || quit "cannot install nvim from $installer_path"
rm $installer_path || quit "cannot remove downloaded file which is $installer_path"

echo fetching repo...

git clone https://github.com/zeionara/nvim-configs.git $HOME/.config/nvim_ || quit 'cannot clone repo'

echo installing package manager...

mkdir $HOME/.config/nvim || quit 'cannot create config directory'
ln $HOME/.config/nvim_/lua/plugins.lua $HOME/.config/nvim/init.lua || quit 'cannot create link to plugins list'

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim || quit 'cannot install package manager'

echo 'installing plugins...'

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerInstall' || quit 'cannot install plugins'

echo 'configuring neovim...'

rm -rf $HOME/.config/nvim || quit 'cannot remove temporary config'
mv $HOME/.config/nvim_ $HOME/.config/nvim || quit 'cannot configure nvim'

echo 'setting up ale...'

mkdir -p ~/.local/share/nvim/site/pack/git-plugins/start || quit 'cannot create folders for ale'
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.local/share/nvim/site/pack/git-plugins/start/ale || quit 'cannot clone ale'

echo 'finished installing nvim'
