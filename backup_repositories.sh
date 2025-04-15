#!/bin/bash

backup_dir="$HOME/backup_repositories_$(date -u +%d_%m_%Y)"

mkdir $backup_dir

cd $backup_dir

xargs -I {} git clone --mirror {} < $HOME/devices/backup/joel-mueller-repositories.txt
