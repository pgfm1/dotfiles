Neovim
======

Install the latest (usually _nightly_) build of [neovim](https://neovim.io/)
and then do the following:

### Install Neovim Support Packages

This assumes that `npm`, `pip3` and `gem` are available. It ensures that the
standard support packages are available.

```bash
npm install -g neovim
pip3 install neovim
pip3 install neovim-remote
sudo gem install neovim
```

### vim-plug

I use [vim-plug](https://github.com/junegunn/vim-plug) to manage vim plugins.

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Once that's installed launch neovim and run:

```
:PlugInstall
```

Assuming that all goes well, the additional `coc` commands will need to be run
for `coc.nvim` setup:

```
:CocInstall coc-metals
:CocInstall coc-json
```
