#!/bin/bash

echo "Note: Homebrew has to be installed. Download Homebrew from https://brew.sh"

PATH_OF_CONFIGFILES="${HOME}/devices/homebrew"

# Loop through all formula files
echo "Checking formulas..."
for formula_file in "$PATH_OF_CONFIGFILES/formulas/"*; do
  echo "Found formula list: $(basename "$formula_file")"
  read -p "Do you want to install the formulas from '${formula_file}'? (y/n): " install_homebrew
  if [[ "$install_homebrew" =~ ^[Yy]$ ]]; then
    xargs brew install < "$formula_file"
  else
    echo "Skipping formulas from $formula_file"
  fi
done

# Loop through all cask files
echo "Checking casks..."
for cask_file in "$PATH_OF_CONFIGFILES/casks/"*; do
  echo "Found cask list: $(basename "$cask_file")"
  read -p "Do you want to install the casks from '${cask_file}'? (y/n): " install_casks
  if [[ "$install_casks" =~ ^[Yy]$ ]]; then
    xargs brew install --cask < "$cask_file"
  else
    echo "Skipping casks from $cask_file"
  fi
done
