## Set custom aliases

alias vim=nvim
alias vi=nvim
alias nv=nvim

alias zup='sudo zypper dup --no-recommends --allow-vendor-change'
alias znr='sudo zypper in --no-recommends'
alias zin='sudo zypper in'
alias zrm='sudo zypper rm -u'
alias zrf='sudo zypper ref'
alias zrr='sudo zypper rr'
alias zlr='zypper lr -ps'

alias pacorm='pacman -Qdtq | sudo pacman -Rcns -'

alias ls='eza -al --color=always --group-directories-first --icons'
alias la='eza -a --color=always --group-directories-first --icons'
alias ll='eza -l --color=always --group-directories-first --icons'
alias lt='eza -aT --color=always --group-directories-first --icons'
alias l.="eza -a | grep -e '^\.'"

alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias hw='/usr/sbin/hwinfo --short'

alias jctl="journalctl -p 3 -xb"

alias cavitty='kitten panel --edge=background cava'

## SpotDL
alias spot-a="spotdl --output '/home/kb/Music/MP3/Artists/{album-artist}/{album} ({year})/{artists} - {title}.{output-ext}' --bitrate 320k"
alias spot-p="spotdl --output '/home/kb/Music/MP3/Playlists/{list-name}/{artists} - {title}.{output-ext}' --bitrate 320k"
