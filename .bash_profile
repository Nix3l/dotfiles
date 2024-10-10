# run the bashrc
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# set some default apps
export EDITOR="nvim"
export BROWSER="librewolf"
export TERMINAL="alacritty"
export FILE_EXPLORER="thunar"

# for jp input to work properly on some apps
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export SDL_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

export PATH=$PATH:/home/nix3l/.spicetify:/home/nix3l/renderdoc/bin

# run startx on login
if [[ "$(tty)" = "/dev/tty1" ]]; then
    sleep 2
    startx
fi
