#!/bin/bash
cliphist list | rofi -dmenu | cliphist decode | wl-copy && notify-send "Clipboard" "Item copied to clipboard"
