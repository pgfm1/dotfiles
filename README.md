dotfiles
========

This repository holds my current configuration and includes the following:

- [i3](https://i3wm.org)
- [Neovim](https://neovim.io/)
- [tmux](https://github.com/tmux/tmux)
- [Alacritty](https://github.com/jwilm/alacritty)
- [ZSH](https://www.zsh.org/) [(Oh-my-ZSH)](https://github.com/robbyrussell/oh-my-zsh)
- Git Configuration

```
git clone https://github.com/pgfm1/dotfiles.git
```

## Overview

My workflow is an i3-based, keyboard-centric, single-monitor (2k, 25") affair.

| Component | Name |
| --------- | ---- |
| OS | Ubuntu |
| Window Manager | i3 |
| Terminal | alacritty |
| Editor | neovim |
| Shell | zsh |
| Terminal Font | iosevka term |
| Editor Font | iosevka |
| Launcher/Switcher | rofi |
| Email | aerc + protonmail |
| Browser | firefox |
| Clipboard | clipmenu |
| Gemini Browser | bombadillo |

## symlinks

You can establish these automatically with [link.sh](link.sh). `$DIR` is the
path to this repository.

### zsh

```bash
ln -s $DIR/zshrc $HOME/.zshrc
```

### neovim

```bash
ln -s $DIR/init.vim $HOME/.config/nvim/init.vim
ln -s $DIR/coc-settings.json $HOME/.config/nvim/coc-settings.json
```

### alacritty

```bash
ln -s $DIR/alacritty.yml $HOME/.config/alacritty/alacritty.yml
```

### gitconfig

```bash
ln -s $DIR/gitconfig $HOME/.gitconfig
```

### i3

```bash
ln -s $DIR/i3-config $HOME/.config/i3/config
```

## Scripts

Please see my primary [Scripts](https://git.sr.ht/~eidolon/scripts) repository.
They might not be useful to you, but then again they might.

## System Setup Guide

Varied (light) documentation on how I setup and manage my system.

### Specifics

- [System Preparation](docs/system-prep.md)
- [ZSH](docs/zsh.md)
- [Email](docs/email.md)
- [Browsers](docs/browsers.md)
- [Neovim](docs/neovim.md)
- [Rofi](docs/rofi.md)
