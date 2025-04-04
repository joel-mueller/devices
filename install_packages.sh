#!/bin/bash

echo "Note: Homebrew must be installed. Download it from https://brew.sh if you haven't already."

PATH_OF_CONFIGFILES="${HOME}/devices/homebrew"

# Function to process installation files in a directory
# $1 = directory path, $2 = brew command (e.g., "brew install", "brew install --cask")
install() {
  local dir_path="$1"
  local install_cmd="$2"

  if [ ! -d "$dir_path" ]; then
    echo "Directory not found: $dir_path"
    return
  fi

  for file in "$dir_path"/*; do
    if [ -f "$file" ]; then
      echo "Found installation list: $(basename "$file")"
      read -rp "Do you want to install the applications from '${file}'? (y/n): " install_file
      if [[ "$install_file" =~ ^[Yy]$ ]]; then
        echo "Installing from $file using '$install_cmd'..."
        xargs -I {} bash -c "$install_cmd {}" < "$file"
      else
        echo "Skipping file: $file"
      fi
    fi
  done
}

echo ""
echo "Install Homebrew formulas"
install "${PATH_OF_CONFIGFILES}/formulas" "brew install"

echo ""
echo "Install Cask formulas"
install "${PATH_OF_CONFIGFILES}/casks" "brew install --cask"

