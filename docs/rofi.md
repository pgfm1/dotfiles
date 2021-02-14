Rofi
====

The [rofi](https://github.com/davatorium/rofi) project is a really well-done
launcher/switcher/dmenu. It's installed via system packages, so 
`sudo apt install rofi` is the only action required.

## i3 integration

I use `rofi` in place of `dmenu` and as a window switcher:

- `mod+d`: open rofi in dmenu mode
- `mod+p`: open window switcher

I also use `rofi` as a front for my clipboard manager:

- `mod+c`: show clipboard history

## clipmenu

I leverage [clipmenu](https://github.com/cdown/clipmenu) for basic clipboard
management that is integrated into rofi.

### Install clipnotify

```bash
git clone https://github.com/cdown/clipnotify.git
cd clipnotify
sudo make install
```

### Install clipmenu

```bash
git clone https://github.com/cdown/clipmenu.git
cd clipmenu
sudo make install
```

### Create directory for clipboard

```bash
mkdir ~/clip
```

### Edit system configuration

```bash
systemctl --user edit clipmenud
```

Ensure the following are set for the service (insert your home dir):

```
[Service]
Environment="CM_DIR=$HOME/clip"
Environment="CM_LAUNCHER=rofi"
```

### Ensure the proper DISPLAY is available and run clipmenud

```
systemctl --user import-environment DISPLAY
systemctl --user enable clipmenud
systemctl --user start clipmenud
systemctl --user status clipmenud
```
