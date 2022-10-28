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

# START IMPORTANT PROCESSES #

pulseaudio --start
start-pulseaudio-x11

pkill polybar picom

nitrogen --restore &
picom --experimental-backends --config ~/.config/picom.conf &
dunst -config ~/.config/dunst/dunstrc &

xset r rate 200 40
xset s 0 -dpms # screensaver off
xrandr --output eDP1 --brightness 0.8
xrandr -s 1366x768

xsetroot -cursor_name left_ptr # why must you do this to me bspwm

# ------------------------- #

exec bspwm -c ~/.config/bspwm/bspwmrc
