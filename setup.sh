# Update packages
sudo apt-get update
sudo apt-get upgrade -y

# Install prefrerred packages
sudo apt purge  grim stow slurp cliphist sway wofi nwg-displays nwg-look hyprland dunst pavucontrol pamixer thunar libhyprutils-dev libhyprlang-dev -y

# Set up required directories
mkdir -p "$HOME/screenshots"

sudo rm /bin/hypr*

sudo apt autoremove
