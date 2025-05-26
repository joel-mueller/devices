#!/bin/bash

echo "Updating package lists and upgrading existing packages..."
sudo apt update
sudo apt upgrade -y

echo ""
echo "Installing apt repositories"

curl https://raw.githubusercontent.com/joel-mueller/devices/refs/heads/main/apt/apt.txt | xargs -I {} sudo apt install -y {}

echo ""
echo "Done ."
