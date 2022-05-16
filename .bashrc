# when running a script or smth not in a cmd then exit
[[ $- != *i* ]] && return

# aliases
alias ls='exa -lah --color=auto'
alias install='sudo pacman -Syu'
alias uninstall='sudo pacman -Rs'
alias search='pacman -Ss'
alias downmp3='yt-dlp -x --audio-format mp3 --prefer-ffmpeg'
alias mkdir='mkdir -p'
alias rm='rm -r'
alias gw='./gradlew'
alias vim='nvim'
alias xsrc='./xbps-src'
alias aurinstall='yay -Sy'
alias cat='bat'
alias cp='cp -r'

# $HOME/.local/scripts/termcolor/colorscript.sh -r

# prompt
eval "$(starship init bash)"
# PS1='\w [\$] '

if [[ "$(tty)" = "/dev/tty1" ]]; then
    killall sxhkd
fi
