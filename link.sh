#!/bin/bash

# script location, used for installation

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# ensure the relevant configuration directories are available

mkdir $HOME/.config/nvim
mkdir $HOME/.config/alacritty
mkdir $HOME/.config/i3

# symlink the configuration hosted in this repository

ln -s $DIR/zshrc $HOME/.zshrc
ln -s $DIR/init.vim $HOME/.config/nvim/init.vim
ln -s $DIR/coc-settings.json $HOME/.config/nvim/coc-settings.json
ln -s $DIR/alacritty.yml $HOME/.config/alacritty/alacritty.yml
ln -s $DIR/i3-config $HOME/.config/i3/config
ln -s $DIR/gitconfig $HOME/.gitconfig
