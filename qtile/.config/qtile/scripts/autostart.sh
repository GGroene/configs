#!/bin/bash

picom --daemon --config $HOME/.config/qtile/scripts/picom.conf & 
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/bin/wired &
eval $(gnome-keyring-daemon --start) 
# /usr/bin/emacs --daemon &
"$HOME"/.screenlayout/layout.sh &
nm-applet &
blueman-applet &
clipit &
solaar -w hide -b solaar &
# feh --bg-fill $HOME/.config/qtile/Wallpaper/Skyscraper.png &
nitrogen --restore &
redshift -l 51.5964:4.7889 &
