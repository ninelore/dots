#!/usr/bin/env bash

_WM=("hypr" "kitty" "waybar" "xdg-desktop-portal" "mako")
_CLI=("ranger")

if [[ $1 == "wm" ]]; then
    for i in "${_WM[@]}"; do
        if [[ -d "./linux-wm/$i" ]]; then
            cp -rf "./linux-wm/$i" ~/.config/
        else
            echo "$i"
            echo "Please cd into linux-wm first!"
            exit 1
        fi
    done
fi

for i in "${_CLI[@]}"; do
    if [[ -d "./linux-cli/$i" ]]; then 
        cp -rf "./linux-cli/$i" ~/.config/ 
    else 
        echo "$i"
        echo "Please cd into linux-wm first!"
        exit 1
    fi
done
