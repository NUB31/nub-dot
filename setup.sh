#!/bin/bash

curl -sS https://starship.rs/install.sh | sh

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm \
    code \
    alacritty \
    thunar \
    ttf-jetbrains-mono-nerd \
    ttf-font-awesome \
    stow \
    nwg-look \
    nwg-displays \
    cmake \
    meson \
    cpio \
    network-manager-applet \
    nm-connection-editor \
    pavucontrol \
    wl-clipboard \
    orchis-theme \
    swaync

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
    hyprland-git \
    rofi-lbonn-wayland-git \
    librewolf-bin

hyprpm add https://github.com/Duckonaut/split-monitor-workspaces
hyprpm enable split-monitor-workspaces
hyprpm reload