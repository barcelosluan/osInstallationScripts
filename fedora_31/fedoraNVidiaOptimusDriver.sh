#!/bin/bash
echo ""
echo ""
echo ""
echo "Fedora nVidia Optimus Driver Install"
echo "Updated 20-12-2019"
echo "Enjoy the script"
echo "Made by: barcelosluan"
echo ""
echo ""
echo ""

# Updating Sys
sudo dnf update -y

# Add RPMFusion Repository

# Install nVidia Drivers
sudo dnf install -y fedora-workstation-repositories
sudo dnf -y config-manager rpmfusion-nonfree-nvidia-driver --set-enabled

# Install Necessary Packages
sudo dnf install -y akmod-nvidia acpi

# Enable Copr repository (https://copr.fedorainfracloud.org/coprs/chenxiaolong/bumblebee/ chenxiaolong/bumblebee) 
sudo dnf -y copr enable chenxiaolong/bumblebee

# Install Drivers
sudo dnf install -y akmod-bbswitch
sudo dnf install -y bumblebee
sudo dnf install -y primus

# Add optirun and primusrun to bumblebee group
sudo gpasswd -a $USER bumblebee

# Enable the bumblebeed service and disable the nvidia-fallback service
sudo systemctl enable bumblebeed
sudo systemctl mask nvidia-fallback
reboot
