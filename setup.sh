# Update packages
sudo apt-get update
sudo apt-get upgrade -y

stow --adopt .
git restore --hard

sudo apt autoremove
