# Install starship
curl -sS https://starship.rs/install.sh | sh

# Install stow
sudo apt update
sudo apt install stow -y

# Create symlinks between parents and here
stow --adopt .

# Restore merged symlinks
git restore . 

chmod +x .local/bin/*

# Install hyprpaper
sudo cp .bin/hyprpaper /usr/bin/hyprpaper

# Install fonts
sudo apt install fonts-jetbrains-mono
sudo apt install fonts-font-awesome
