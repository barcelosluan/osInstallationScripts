#!/bin/bash
echo ""
echo ""
echo ""
echo "Fedora nVidia Driver Install - Part II"
echo "Updated 20-12-2019"
echo "Enjoy the script"
echo "Made by: barcelosluan"
echo ""
echo ""
echo ""

# Install nVidia and Vulkan
## Change to tmp directory
cd /home/$USER/Downloads/
## Install
sudo ./NVIDIA-Linux-*.run
## Clean-up
sudo rm ./NVIDIA-Linux-*.run
sudo rm /home/$USER/fedoraNVidiaDriver-Part-I.sh
sudo rm /home/$USER/fedoraNVidiaDriver-Part-II.sh
## Install Vulkan
sudo dnf install -y vulkan
sudo dnf install -y vulkan-tools
## All Is Done and Then Reboot Back to Runlevel 5
sudo systemctl set-default graphical.target
reboot
