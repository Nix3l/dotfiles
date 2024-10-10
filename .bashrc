export PATH=$PATH:/home/nix3l/.spicetify:/home/nix3l/bin:/home/nix3l/.local/bin

# when running a script or smth not in a cmd then exit
[[ $- != *i* ]] && return

# aliases
alias ls='exa -lah --color=auto --group-directories-first'
alias install='sudo pacman -Sy'
alias uninstall='sudo pacman -Rs'
alias search='pacman -Ss'
alias downmp3='yt-dlp -x --audio-format mp3 --prefer-ffmpeg'
alias mkdir='mkdir -p'
alias rm='rm -r'
alias gw='./gradlew'
alias vim='nvim'
alias xsrc='./xbps-src'
alias aurinstall='yay -Sy'
alias bcat='bat'
alias cp='cp -r'
alias hexdump='hexdump -C'

# prompt
eval "$(starship init bash)"
# PS1='\w [\$] '

if [[ "$(tty)" = "/dev/tty1" ]]; then
    killall sxhkd
fi
