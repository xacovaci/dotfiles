xrdb -merge ~/.Xresources
feh --randomize --bg-fill ~/.local/wallpapers/pixelart1 &
picom --config ~/.config/picom/picom.conf &
slstatus &

setxkbmap -layout us,ir -option grp:alt_shift_toggle

dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

exec dwm
