# when running a script or smth not in a cmd then exit
[[ $- != *i* ]] && return

# aliases
alias ls='exa -lah --color=auto'
alias install='sudo pacman -Syu' #'sudo xbps-install -Svu'
alias uninstall='sudo pacman -Rs' #'sudo xbps-remove -Rv'
alias search='pacman -Ss' #'xbps-query -Rs'
alias downmp3='yt-dlp -x --audio-format mp3 --prefer-ffmpeg'
alias mkdir='mkdir -p'
alias rm='rm -r'
alias gw='./gradlew'
alias vim='nvim'
alias xsrc='./xbps-src'
alias aurinstall='yay -Sy'
alias fetch='$HOME/Bunnyfetch/bunnyfetch'

$HOME/Bunnyfetch/bunnyfetch

# prompt
eval "$(starship init bash)"
# PS1='\w \$ '
