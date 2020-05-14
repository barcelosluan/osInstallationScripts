#!/bin/bash
echo ""
echo "####################################"
echo "#                                  #"
echo "#    Ubuntu 20.04 fresh install    #"
echo "#       Made by: barcelosluan      #"
echo "#        Updated 14-05-2020        #"
echo "#         Enjoy the script         #"
echo "#                                  #"
echo "####################################"
echo ""

# Updating Sys
sudo apt update -y
sudo apt full-upgrade -y

# Browsers
# sudo apt install epiphany-browser -y

# Utils
sudo apt install alacarte -y
# sudo snap install gimp
# sudo snap install inkscape
sudo apt install ttf-mscorefonts-installer -y
sudo snap install vlc
sudo snap install spotify
sudo apt install steam -y

# Development
# sudo snap install brackets --classic
sudo apt install git -y
# sudo snap install gitkraken
sudo apt install openjdk-13-jre-headless -y
# sudo apt install mariadb-server -y
# sudo apt install nginx -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs -y
sudo snap install code --classic

# Remove unecessary packages
sudo apt auto-remove -y
