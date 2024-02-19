# Bash config file

# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

export OSH='/home/asuka/.oh-my-bash'

OSH_THEME="rr"

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
)

source "$OSH"/oh-my-bash.sh

# Aliases
alias ll="lsd -ll"
alias ls="lsd"
alias lsa="lsd -ail"
alias l="/usrbin/ls"

alias asfetch="neofetch --source /home/asuka/.config/neofetch/asuka.txt"
alias arpscan="sudo arp-scan --localnet" 

alias tmuxa="tmux attach -t"
alias tmuxk="tmux kill-session -t"
