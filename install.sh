#!/bin/bash

# Variables
dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory

# create dotfiles_old in homedir
mkdir -p $olddir

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

create_symlink() {
    echo "Creating symlink to $1 in home directory."
    mv ~/$1 $olddir
    ln -s $dir/$2 ~/$1
}

# Create possible missing paths
if [ ! -d ~/.themes ]
then
    mkdir -p ~/.themes
fi

if [ ! -d ~/.icons ]
then
    mkdir -p ~/.icons
fi

if [ ! -d ~/.config/ulauncher/user-themes ]
then
    mkdir -p ~/.config/ulauncher/user-themes
fi

if [ ! -d ~/.config/i3 ]
then
    mkdir -p ~/.config/i3
fi

if [ ! -d ~/.config/nvim ]
then
    mkdir -p ~/.config/nvim
fi

echo "Creating symlinks."
# Vim
create_symlink .vim .vim
create_symlink .vimrc .vimrc
create_symlink .config/nvim/init.vim .vimrc 

# Tmux
create_symlink .tmux.conf .tmux.conf

# i3
create_symlink .config/i3/config i3/config

# Themes and icons
create_symlink .themes/Nordic themes/Nordic
create_symlink .icons/Nordic icons/NordArc/NordArc-Icons
create_symlink .config/ulauncher/user-themes/nord ulauncher/ulauncher-nord

# Zsh
create_symlink .zshrc .zshrc
create_symlink .oh-my-zsh oh-my-zsh
create_symlink dotfiles/oh-my-zsh/plugins/zsh-autosuggestions oh-my-zsh-plugins/zsh-autosuggestions
echo "done"
