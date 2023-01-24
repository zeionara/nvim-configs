# Installation

Install `neovim` from the latest `.deb` file in [the list](https://github.com/neovim/neovim/releases/tag/stable). For example, to install the `stable` release (`v0.8.2` at the time of writing) download the file and then install the package:

```sh
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
```

Clone this repo as the root of the neovim config:

```sh
git clone git@github.com:zeionara/nvim-configs.git $HOME/.config/nvim
```

Install packer by cloning:

```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Install dependencies through packer:

```sh
nvim --headless +PackerInstall +q
```

Install ale:

```sh
mkdir -p ~/.local/share/nvim/site/pack/git-plugins/start
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.local/share/nvim/site/pack/git-plugins/start/ale
```

# Additional settings

## Swift

Install swift itself from the latest `.deb` in [the list](https://www.swift.org/download/). For example, to install the `stable` release (`5.7.3` at the time of writing) download the file and the install the package:

```sh
SWIFT_VERSION=5.7.3

cd /tmp
wget https://download.swift.org/swift-$VERSION-release/ubuntu2204/swift-$VERSION-RELEASE/swift-$VERSION-RELEASE-ubuntu22.04.tar.gz
sudo mv swift-$VERSION-RELEASE-ubuntu22.04 /usr/share/swift-$VERSION
echo export PATH=$PATH:/usr/share/swift-$VERSION/usr/bin/:/usr/share/swift-$VERSION/
```

Install required packages for the lsp server:

```sh
sudo apt-get install libncurses5
```
