# ZSH config file

export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/home/$USER/.local/bin"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias ls="lsd"
alias lsa="lsd -ail"

alias arpscan="sudo arp-scan --localnet"
alias ifwlan='iwconfig wlan0 && ifconfig wlan0'
alias tmuxa="tmux attach -t"
alias tmuxk="tmux kill-session -t"
