#!/bin/bash

set -e

if ! command -v yay 2>&1 >/dev/null
then
    curl -sS https://starship.rs/install.sh | sh
fi

sudo pacman -Syu --noconfirm \
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
    brightnessctl

if ! command -v yay 2>&1 >/dev/null
then
    sudo pacman -S --needed --noconfirm  git base-devel
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin
    makepkg -si
    cd ../
    rm -rf yay-bin
fi

yay -Syu --noconfirm  \
    hyprpaper-git \
    hyprpicker-git \
    hypridle-git \
    hyprlock-git \
    hyprpolkitagent-git \
    hyprsysteminfo-git \
    hyprland-qt-support-git \
    hyprcursor-git \
    hyprutils-git \
    hyprlang-git \
    hyprwayland-scanner-git \
    xdg-desktop-portal-hyprland-git \
    aquamarine-git \
    hyprgraphics-git \
    hyprland-qtutils-git \
    hyprland-git \
    rofi-lbonn-wayland-git \
    librewolf-bin

hyprpm add https://github.com/Duckonaut/split-monitor-workspaces
hyprpm enable split-monitor-workspaces
hyprpm reload