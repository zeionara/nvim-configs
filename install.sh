#!/bin/bash

# to install nvim using this script execute the following command on target maching:
# curl https://raw.githubusercontent.com/zeionara/nvim-configs/master/install.sh -s | bash 

set -e

quit () {
    echo $1
    exit 1
}

if test -z $(which nvim 2> /dev/null); then
  if test $(which apt 2> /dev/null); then
    version=${NVIM_VERSION:-nightly}
    url=${NVIM_URL:-https://github.com/neovim/neovim/releases/download/$version/nvim-linux64.tar.gz}
    installer_path=${NVIM_FILE:-/tmp/nvim.tar.gz}
    installation_path=${NVIM_ROOT:-/usr/local}

    echo downloading from $url to $installer_path...

    curl -sSL -o "$installer_path" "$url" || quit 'cannot download file'

    echo installing from $installer_path...

    sudo tar -C "$installation_path" -xzvf "$installer_path" || quit "cannot install nvim from $installer_path"
    sudo ln "$installation_path/nvim-linux64/bin/nvim" /usr/bin || quit "cannot create link to the nvim binary at $installation_path/nvim-linux64/bin/nvim"

    rm "$installer_path" || quit "cannot remove downloaded file $installer_path"
  elif test $(which pacman 2> /dev/null); then
    sudo pacman -Syu
    sudo pacman -S neovim
  elif test $(which emerge 2> /dev/null); then
    sudo emerge --ask neovim
  else
    quit "Can't install neovim"
  fi
fi

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
