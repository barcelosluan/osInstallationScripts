#!/bin/bash
echo ""
echo ""
echo ""
echo "Fedora fresh start install"
echo "Updated 20-12-2019"
echo "Enjoy the script"
echo "Made by: donLouan"
echo ""
echo ""
echo ""

# Updating Sys
sudo dnf update -y

# ADD RPMFusion Repository
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Snap Install
sudo dnf install -y snapd
sudo ln -s /var/lib/snapd/snap /snap
sudo snap wait system seed.loaded

# Browsers
sudo dnf install -y google-chrome-stable

# Utils
sudo dnf install -y alacarte
sudo snap install gimp
sudo dnf install -y gnome-tweak-tool
sudo snap install inkscape
sudo snap install vlc
sudo snap install spotify
sudo dnf install -y steam
sudo dnf install -y transmission transmission-daemon

# Development

sudo snap install brackets --classic
sudo snap install gitkraken
sudo dnf install -y mariadb-server
sudo dnf install -y nginx
sudo snap install code --classic

# Remove unecessary packages
sudo dnf remove -y cheese
sudo dnf remove -y gnome-boxes
sudo dnf remove -y gnome-contacts
sudo dnf remove -y gnome-maps

