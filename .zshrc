### Oh My ZSH Config ###
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="custom"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

### Variables ###
export PATH="$PATH:/home/$USER/.local/bin:/home/$USER/.local/bin/scripts"

### Aliases ###
# Customization
alias ff="fastfetch --kitty-icat ~/.config/fastfetch/fetch.png"

# Tmux
alias tmuxa="tmux attach"
alias tmuxk="tmux kill-session -t "

# Files
alias ls="lsd"
alias la="lsd -al"
alias ll="lsd -l"

# Text
alias xcpy="xsel -ib"
alias xpst="xsel -ob"
alias xmty="xsel -cb"
alias vim"nvim"

# Network
alias ipa="ip a sh wlp2s0 && ip a sh wg0 && ip a sh eth0"
alias arpscan="sudo arp-scan --localnet"

# Download
alias yt-flac="yt-dlp -x --audio-format flac"
alias yt-mp4='yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best"'

# Shell
alias reset="source ~/.zshrc"
alias watch="watch -n 0.5 -t"

## Timer function
function preexec() {
  timer=${timer:-$SECONDS}
}

function precmd() {
  if [ $timer ] ; then
    timer_show=$(($SECONDS - $timer))
    export RPROMPT="%F{cyan}${timer_show}s%f %B%F{14}󰣇%b%f | %B%F{magenta}%M%f%b"
    unset timer
  fi
}
