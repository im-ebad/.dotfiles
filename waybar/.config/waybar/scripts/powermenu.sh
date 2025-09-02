#!/bin/bash

options="shutdown\nreboot\nsleep\nlogout"

chosen=$(echo -e "$options" | rofi -dmenu -p "Power Menu" -theme-str 'window {width: 20em; padding: 10px;} listview {lines: 4;}')

case "$chosen" in
    "shutdown")
        systemctl poweroff
        ;;
    "reboot")
        systemctl reboot
        ;;
    "sleep")
        systemctl suspend
        ;;
    "logout")
        hyprctl dispatch exit
        ;;
esac
