#!/bin/bash

set -e

if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

#System
echo "max_parallel_downloads=10" >>/etc/dnf/dnf.conf

#Updates
dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf update -y

#flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y com.spotify.Client
flatpak install -y flathub com.discordapp.Discord


#DNF add repos
dnf copr enable x3n0m0rph59/eruption -y


#DNF Software
dnf install -y eruption #keyboard
dnf install -y libgtop2-devel lm_sensors #sensors 
dnf install -y chromium thunderbird vim neovim htop zsh zsh-syntax-highlighting zsh-autosuggestions tmux curl
dnf groupinstall -y "Development Tools" "Development Libraries"
dnf install -y keepassxc

#Pip
pip install clingo

#Systemctl



#Gnome
dnf install -y gnome-shell-extension-appindicator gnome-extensions-app gnome-tweaks
dnf install -y nemo
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
vi /usr/share/applications/nemo.desktop




#Spack


#Neovim

