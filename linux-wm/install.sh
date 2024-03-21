#!/usr/bin/env bash

for i in "gtk-3.0" "gtk-4.0" "hypr" "kitty" "Kvantum" "waybar"; do
    if [[ -d "./$i" ]]; then 
        cp -rf "./$i" ~/.config/ 
    else 
        echo "$i"
        echo "Please cd into linux-wm first!"
        exit 1
    fi
done