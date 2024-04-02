#!/usr/bin/env bash
player_status=$(playerctl status 2> /dev/null)
text() {
    if [[ -n $(playerctl metadata artist) ]]; then
        echo "$(playerctl metadata artist) - $(playerctl metadata title)"
    else
        playerctl metadata title
    fi
    
}
if [ "$player_status" = "Playing" ]; then
    echo " $(text)"
elif [ "$player_status" = "Paused" ]; then
    echo " $(text)"
fi