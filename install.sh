#!/usr/bin/env bash

_WM=("anyrun" "hypr" "kitty" "mako" "waybar" "xdg-desktop-portal")
_CLI=("ranger")

if [[ $1 == "wm" ]]; then
    echo "install wm"
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

echo "install cli"
for i in "${_CLI[@]}"; do
    if [[ -d "./linux-cli/$i" ]]; then 
        cp -rf "./linux-cli/$i" ~/.config/ 
    else 
        echo "$i"
        echo "Please cd into linux-wm first!"
        exit 1
    fi
done
