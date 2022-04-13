[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# set some default apps
export EDITOR="nvim"
export BROWSER="librewolf"
export TERMINAL="alacritty"

# run startx on login
if [[ "$(tty)" = "/dev/tty1" ]]; then
    startx
fi
