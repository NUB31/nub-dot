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
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
unzip JetBrainsMono.zip -d $HOME/.local/share/fonts/JetBrainsMono
rm JetBrainsMono.zip

# Install cursor theme
sudo apt install bibata-cursor-theme
