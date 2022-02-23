#!/bin/bash

# Variables
dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

echo "Moving any existing dotfiles from ~ to $olddir"
create_symlink() {
    mv ~/$1 $olddir
    echo "Creating symlink to $1 in home directory."
    ln -s $dir/$2 ~/$1
}

# Create possible missing paths
if [ ! -d ~/.themes ] then
    mkdir -p ~/.themes
fi

if [ ! -d ~/.icons ] then
    mkdir -p ~/.icons
fi

create_symlink .vimrc .vimrc
create_symlink .zshrc .zshrc
create_symlink .tmux.conf .tmux.conf
create_symlink .oh-my-zsh .oh-my-zsh
create_symlink .config/i3/config i3/config
create_symlink .themes/Nordic themes/Nordic
create_symlink .icons/Nordic icons/NordArc/NordArc-Icons

install_zsh () {
# Test to see if zshell is installed.  If it is:
if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
    # Clone my oh-my-zsh repository from GitHub only if it isn't already present
    if [[ ! -d $dir/oh-my-zsh/ ]]; then
        git clone http://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh
        git clone https://github.com/zsh-users/zsh-autosuggestions .oh-my-zsh/plugins/zsh-autosuggestions
    fi
    # Set the default shell to zsh if it isn't currently set to zsh
    if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
        chsh -s $(which zsh)
    fi
else
    # If zsh isn't installed, install it
    sudo apt-get install zsh
    # Install oh-my-zsh
    install_zsh
fi
}

install_zsh
