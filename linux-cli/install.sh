#!/usr/bin/env bash

# shellcheck disable=SC2043
for i in "ranger"; do
    if [[ -d "./$i" ]]; then 
        cp -rf "./$i" ~/.config/ 
    else 
        echo "$i"
        echo "Please cd into linux-wm first!"
        exit 1
    fi
done