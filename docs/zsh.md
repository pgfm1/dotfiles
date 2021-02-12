ZSH
===

I use [OhMyZSH](https://ohmyz.sh) and have been happy with it for 
years. I have also settled on using the 
[Spaceship Prompt](https://denysdovhan.com/spaceship-prompt/) theme.

- [Install OhMyZSH](https://ohmyz.sh/#install)
- Install [Spaceship](https://denysdovhan.com/spaceship-prompt/)
- Install [ZSH Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

### Spaceship Installation

```bash
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

### Syntax Highlighting

Note that this is currently disabled because it breaks `vi-mode` editing.

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
mv zsh-syntax-highlighting .zsh-syntax-highlighting
```

### vi-mode

Please see the 
[vi-mode](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vi-mode)
documentation. Use `vv` to edit the line (from normal mode).

### Ensure that ZSH is Properly-Configured

```bash
source ~/.zshrc
```
