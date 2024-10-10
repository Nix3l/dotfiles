#!/bin/bash

#        _      _____ _  #
#  _ __ (_)_  _|___ /| | #
# | '_ \| \ \/ / |_ \| | #
# | | | | |>  < ___) | | #
# |_| |_|_/_/\_\____/|_| #
#                        #

# ------- #
# XINITRC #
# ------- #

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# START IMPORTANT PROCESSES #

pkill polybar picom

nitrogen --restore &
picom --config ~/.config/picom.conf &
dunst -config ~/.config/dunst/dunstrc &

xset r rate 200 40
xset s 0 -dpms # screensaver off
xrandr --output DP-0 --mode 1920x1080 --rate 165
xrandr --output DP-0 -s 1920x1080

xsetroot -cursor_name left_ptr # why must you do this to me bspwm

# ------------------------- #

exec bspwm -c ~/.config/bspwm/bspwmrc
