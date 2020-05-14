#!/bin/bash
echo ""
echo ""
echo ""
echo "Fedora nVidia Driver Install-Part-I"
echo "Updated 20-12-2019"
echo "Enjoy the script"
echo "Made by: barcelosluan"
echo ""
echo ""
echo ""

# Updating Sys
sudo dnf update -y

# Add RPMFusion Repository
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Preparing the Sys
## Change to tmp directory
cd /home/$USER/Downloads
## Download nvidia latest driver
### sudo dnf install -y akmod-nvidia
### sudo dnf install -y xorg-x11-drv-nvidia
wget http://us.download.nvidia.com/XFree86/Linux-x86_64/440.44/NVIDIA-Linux-x86_64-440.44.run
## Make nVidia installer executable
sudo chmod +x ./NVIDIA-Linux-*.run
## Install needed dependencies
sudo dnf install -y kernel-devel
sudo dnf install -y kernel-headers
sudo dnf install -y gcc
sudo dnf install -y make
sudo dnf install -y dkms
sudo dnf install -y acpid
sudo dnf install -y libglvnd-glx
sudo dnf install -y libglvnd-opengl
sudo dnf install -y libglvnd-devel
sudo dnf install -y pkgconfig
## Disable nouveau
sudo echo "blacklist nouveau" >> /etc/modprobe.d/blacklist.conf
## Append ‘rd.driver.blacklist=nouveau’ to end of ‘GRUB_CMDLINE_LINUX=”…”‘
sudo gedit /etc/sysconfig/grub
## Update grub2 conf
sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
## Remove -y xorg-x11-drv-nouveau
sudo dnf remove xorg-x11-drv-nouveau
## Backup old initramfs nouveau image
sudo mv /boot/initramfs-$(uname -r).img /boot/initramfs-$(uname -r)-nouveau.img
## Create new initramfs image
sudo dracut /boot/initramfs-$(uname -r).img $(uname -r)
## Reboot to runlevel 3
sudo systemctl set-default multi-user.target
reboot
