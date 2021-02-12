System Preparation
==================

## Overview

My workflow is an i3-based, keyboard-centric, single-monitor (2k, 25") affair.

| Component | Name |
| --------- | ---- |
| OS | Ubuntu |
| Window Manager | i3 |
| Terminal | alacritty |
| Editor | neovim |
| Shell | zsh |
| Terminal Font | iosevka |
| Editor Font | iosevka |
| Launcher/Switcher | rofi |
| Email | aerc + protonmail |
| Browser | firefox |
| Clipboard | clipmenu |
| Gemini Browser | lagrange |

## Some Commands

First, some basic dependencies that cover all of the bases for things I intend
to add:

```bash
sudo apt install build-essential vim git cmake curl pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python3 xclip rofi xsel libx11-dev libxfixes-dev libxfixes3 zsh python3-pip i3 ruby ruby-dev
```

Next create my standard home directory structure:

```bash
mkdir ~/opt
mkdir ~/src
mkdir ~/bin
```

Finally checkout my dotfiles into the home directory and establish the standard
symlinks (tmux omitted as I'm not using it right now):

```bash
git clone git@github.com:pgfm1/dotfiles.git
ln -s $HOME/dotfiles/zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/init.vim $HOME/.config/nvim/init.vim
ln -s $HOME/dotfiles/alacritty.yml $HOME/.config/alacritty/alacritty.yml
ln -s $HOME/dotfiles/gitconfig $HOME/.gitconfig
```

## SSH Key Setup

Because why not:

```bash
ssh-keygen -t ed25519 -C "$EMAIL"
```
