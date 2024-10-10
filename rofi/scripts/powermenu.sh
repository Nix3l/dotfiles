#!/bin/bash

entries="↻ Reboot\n⏻ Shutdown\n⇠ Logout\n⏾ Suspend"

selected=$(echo -e $entries | rofi -dmenu $2 -config $HOME/.config/rofi/gruvbox/config.rasi --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  logout)
    exec bspc quit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
