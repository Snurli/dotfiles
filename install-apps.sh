#!/bin/bash

# Install zsh and set to standard shell
sudo apt update
sudo apt install zsh
chsh -s $(which zsh)

# Install i3-gaps
sudo add-apt-repository ppa:regolith-linux/release
sudo apt update
sudo apt install i3-gaps

# Install ulauncher
sudo add-apt-repository ppa:agornostal/ulauncher
sudo apt update
sudo apt install ulauncher

# Install theme related apps to apply gnome themes to i3 (Run lxappearance)
sudo apt install lxappearance
sudo apt install gtk-chtheme
sudo apt install qt4-qtconfig

# Neovim
wget https://github.com/neovim/neovim/releases/download/v0.6.1/nvim.appimage
chmod 755 nvim.appimage
sudo mv nvim.appimage /usr/bin/nvim
