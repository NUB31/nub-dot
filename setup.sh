# Update packages
sudo apt-get update
sudo apt-get upgrade -y

# Install prefrerred packages
sudo apt-get install grim stow slurp -y

# Set up required directories
mkdir -p "$HOME/screenshots"

# Install starship
curl -sS https://starship.rs/install.sh | sh

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

# Install microsoft edge - For work purposes - Install before firefox so firefox becomes the default browser
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg
sudo apt update && sudo apt install microsoft-edge-stable
sudo rm /etc/apt/sources.list.d/microsoft-edge-dev.list

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
sudo mv hyprpaper/hyprpaper /usr/bin
rm -rf hyprpaper

# Install hyprpicker
wget https://github.com/hyprwm/hyprpicker/releases/download/v0.2.0/v0.2.0.tar.gz
tar -xf v0.2.0.tar.gz
rm v0.2.0.tar.gz
sudo mv hyprpicker/hyprpicker /usr/bin
rm -rf hyprpicker
