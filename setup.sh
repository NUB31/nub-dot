# Update packages
sudo apt-get update
sudo apt-get upgrade -y

stow --adopt .
git reset --hard

sudo apt autoremove
