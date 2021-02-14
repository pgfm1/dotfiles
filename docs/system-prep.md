System Preparation
==================

This section gets basic dependencies out of the way and installs some tools
needed to make my default configurations work.

## Some Commands

First, some basic dependencies that cover much of what I intend to add:

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

## Rust

I use a number of Rust applications that I install using `cargo`. Install 
[rustup](https://rustup.rs/) and switch to nightly.

```bash
cargo install alacritty
cargo install ripgrep
cargo install fd-find
cargo install exa
cargo install bat
cargo install procs
```

Installing `alacritty` in particular is key to my setup and is referenced
specifically by my `i3` configuration. If you don't use `alacritty`, make sure 
to change that.

## FZF

git clone https://github.com/junegunn/fzf.git
mv fzf ~/.fzf
cd ~/.fzf
./install

## JavaScript

I use [n](https://github.com/tj/n) to manage JavaScript/Node/NPM.

```bash
curl -L https://git.io/n-install | bash
```

## Font

[Iosevka](https://typeof.net/Iosevka/) is incredible.
