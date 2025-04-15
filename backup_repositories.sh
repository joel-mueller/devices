#!/bin/bash

dir_name="backup_repositories_$(date -u +%d_%m_%Y)"
backup_dir="$HOME/$dir_name"

mkdir "$backup_dir"

cd "$backup_dir" || exit 1

xargs -I {} git clone --mirror {} < "$HOME/devices/backup/joel-mueller-repositories.txt"

cd

zip -r "${dir_name}.zip" "$dir_name"
