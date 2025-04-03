#!/usr/bin/env bash

PATH_OF_DOTFILES=$HOME/devices/dotfiles
ANTIGEN_PATH=$HOME/antigen.zsh
ANTIGEN_REPO=$HOME/.antigen

# Check if Antigen is already installed
if [ -f "$ANTIGEN_PATH" ]; then
    rm "$ANTIGEN_PATH"
    echo "Uninstall Antigen file"
fi

if [ -f "$ANTIGEN_REPO" ]; then
    rm -rf "$ANTIGEN_REPO"
    echo "Uninstall Antigen file"
fi

# Installing Antigen
echo "Installing Antigen"
curl -L git.io/antigen > $HOME/antigen.zsh

# Remove links to existing dotfiles
echo "Remove links to existing dotfiles"
ls -A $PATH_OF_DOTFILES | xargs -I {} rm -f $HOME/{}

# Linking dotfiles
echo "Linking dotfiles"
ls -A $PATH_OF_DOTFILES | xargs -I {} ln -nfs $PATH_OF_DOTFILES/{} $HOME/{}
