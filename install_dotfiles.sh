#!/usr/bin/env bash

PATH_OF_DOTFILES=$HOME/devices/dotfiles
ANTIGEN_PATH=$HOME/antigen.zsh

# Check if Antigen is already installed
if [ ! -f "$ANTIGEN_PATH" ]; then
    echo "Antigen is not installed. Installing now..."
    curl -L git.io/antigen > $HOME/antigen.zsh
else
    echo "Antigen is already installed."
fi

# Remove links to existing dotfiles
echo "Remove links to existing dotfiles"
ls -A $PATH_OF_DOTFILES | xargs -I {} rm -f $HOME/{}

# Linking dotfiles
echo "Linking dotfiles"
ls -A $PATH_OF_DOTFILES | xargs -I {} ln -nfs $PATH_OF_DOTFILES/{} $HOME/{}
