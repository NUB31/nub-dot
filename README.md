# NUB dotfiles

## Installation

This is a post-install script for https://github.com/JaKooLit/Debian-Hyprland

```bash
git clone --depth=1 -b Ubuntu-24.04-LTS https://github.com/JaKooLit/Debian-Hyprland.git ~/Ubuntu-Hyprland
cd ~/Ubuntu-Hyprland
chmod +x install.sh
./install.sh
cd ../
```


```bash
# It is important to place this repo in the home folder if you want to use stow to manage your dotfiles

cd %HOME
git clone git@github.com:nub31/nub-dot dotfiles
cd dotfiles

# Create symlinks to the the parent folder (aka. $HOME)
# This means that this directory must be located in the home folder
sudo apt install stow -y
stow --adopt .

# Make binaries executable
chmod +x .local/bin/*

sh ./setup.sh
```
