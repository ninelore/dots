#!/bin/sh

handle() {
  case $1 in
    monitoradded*) swww restore ;;
  esac
}

socat -U - UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do handle "$line"; done