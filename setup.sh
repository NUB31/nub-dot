#!/bin/bash

stow . --adopt
git reset --hard

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm \
    librewolf \
    code \
    alacritty \
    thunar

if ! command -v yay 2>&1 >/dev/null
then
    sudo pacman -S --needed --noconfirm  git base-devel
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin
    makepkg -si
    cd ../
    rm -rf yay-bin
fi

yay -Syu --noconfirm
yay -S --noconfirm  \
    hyprpaper-git \
    hyprpicker-git \
    hypridle-git \
    hyprlock-git \
    xdg-desktop-portal-hyprland-git \
    hyprpolkitagent-git \
    hyprsysteminfo-git \
    hyprland-qt-support-git \
    hyprcursor-git \
    hyprutils-git \
    hyprlang-git \
    hyprwayland-scanner-git \
    aquamarine-git \
    hyprgraphics-git \
    hyprland-qtutils-git \
    rofi-lbonn-wayland-git

hyprpm add https://github.com/Duckonaut/split-monitor-workspaces
hyprpm enable split-monitor-workspaces
hyprpm reload