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
sudo apt install fonts-powerline

# Install Python
sudo apt install software-properties-common
sudo apt install python3.8
sudo apt install python-is-python3
sudo apt install pip
pip install pynvim

# Install YCM language support
sudo apt install build-essential cmake vim-nox python3-dev
cd .vim/plugged/YouCompleteMe
python3 install.py --clangd-completer
cd ..

# Install feh - To set background
sudo apt install feh

# Install polybar 
# Required dependencies
sudo apt install build-essential git cmake cmake-data pkg-config python3-sphinx python3-packaging libuv1-dev libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
# Optional  dependencies
sudo apt install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev
# Checkout
git clone --recursive https://github.com/polybar/polybar polybar-install
cd polybar-install
mkdir build
# Build
cd build
cmake ..
make
# Optional. This will install the polybar executable in /usr/local/bin
sudo make install
