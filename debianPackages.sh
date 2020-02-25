#!/bin/bash
echo ""
echo "####################################"
echo "#                                  #"
echo "#    Debian fresh start install    #"
echo "#       Made by: barcelosluan      #"
echo "#        Updated 24-02-2020        #"
echo "#         Enjoy the script         #"
echo "#                                  #"
echo "####################################"
echo ""

# Updating Sys
sudo apt update -y
sudo apt full-upgrade -y

# ADD 'contrib non-free' Repository
sudo nano /etc/apt/sources.list
sudo apt update

# Enable multi-arch
sudo dpkg --add-architecture i386
sudo apt update

# Nvidia & Vulkan
sudo apt install nvidia-driver -y
sudo apt install nvidia-driver-libs-i386 -y
sudo apt install nvidia-vulkan-icd -y
sudo apt install nvidia-vulkan-icd:i386 -y

# Snap Install
sudo apt install snapd -y

# Browsers
sudo snap install firefox

# Utils
sudo apt install alacarte -y
# sudo snap install gimp
# sudo snap install inkscape
sudo apt install ttf-mscorefonts-installer -y
sudo snap install vlc
sudo snap install spotify
sudo apt install steam -y

# Development
# sudo snap install android-studio --classic
# sudo snap install brackets --classic
# sudo snap install gitkraken
# sudo snap install intellij-idea-community --classic
# sudo apt install mariadb-server -y
# sudo dnf install -y nginx
sudo snap install code --classic
# sudo apt install virt-manager -y

# Remove unecessary packages

