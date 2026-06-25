#!/usr/bin/env bash

options="Shutdown\nReboot\nLock"

DMENU="rofi -dmenu"

chosen=$(echo -e "$options" | $DMENU -p "Power Menu" -l 5)

case "$chosen" in
    "Shutdown")
        systemctl poweroff
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Lock")
        slock
        ;;
esac
