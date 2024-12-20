sudo apt-get update
sudo apt-get -y install stow git sway swayidle swaylock fuzzel
sudo apt autoremove

stow --adopt .
git reset --hard
