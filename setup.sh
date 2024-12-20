sudo apt-get update
sudo apt-get -y install stow git thunar firefox-esr sway swayidle swaylock fuzzel
sudo apt autoremove

stow --adopt .
git reset --hard
