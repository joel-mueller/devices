# Installation of repo

PATH_OF_CONFIGFILES="${HOME}/devices/homebrew"

# Install homebrew formulas
echo "Install the homebrew formulas"
read -p "Do you want to install the homebrew formulas? (y/n): " install_homebrew
if [[ "$install_homebrew" =~ ^[Yy]$ ]]; then
    xargs brew install < $PATH_OF_CONFIGFILES/formulas.txt
else
  echo "Skipping homebrew formulas installation."
fi

# Install homebrew casks
echo "Install the homebrew casks"
read -p "Do you want to install the homebrew casks? (y/n): " install_casks
if [[ "$install_casks" =~ ^[Yy]$ ]]; then
    xargs brew install --cask < $PATH_OF_CONFIGFILES/casks.txt
else
  echo "Skipping homebrew casks installation."
fi
