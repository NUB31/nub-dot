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

# Install fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
unzip JetBrainsMono.zip -d $HOME/.local/share/fonts/JetBrainsMono
rm JetBrainsMono.zip

# Install cursor theme
wget https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.6/Bibata-Modern-Ice.tar.xz
tar -xf Bibata-Modern-Ice.tar.xz --directory $HOME/.local/share/icons
rm Bibata-Modern-Ice.tar.xz

# Install firefox
sudo add-apt-repository -y ppa:mozillateam/ppa
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001

Package: firefox
Pin: version 1:1snap*
Pin-Priority: -1
' | sudo tee /etc/apt/preferences.d/mozilla-firefox
sudo snap remove firefox
sudo apt install -y firefox

# Install wofi
sudo apt purge -y rofi
sudo apt autoremove
sudo apt install wofi

# Install nwg-displays
git clone https://github.com/nwg-piotr/nwg-displays.git
cd nwg-displays
sudo sh install.sh
cd ../
sudo rm -rf nwg-displays

# Install hyprpaper
wget https://github.com/hyprwm/hyprpaper/releases/download/v0.7.0/v0.7.0.tar.gz
tar -xf v0.7.0.tar.gz
rm v0.7.0.tar.gz
sudo cp hyprpaper/hyprpaper /usr/bin
rm -rf hyprpaper
