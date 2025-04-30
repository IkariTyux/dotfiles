#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion

# Prompt
## Git Status
gitstat () {
GitStatus=""
Gs=$(git status -s 2>/dev/null)
Gb=$(git branch --show-current 2>/dev/null)

if [ "$Gb" != '' ]
then
  if [ "$Gs" == '' ]
    then
      GitBranch="\033[32m $(git branch --show-current 2>/dev/null) \033[0m"
      GitStatus="\033[94mgit:[$GitBranch\033[94m] \033[0m"
    else
      GitBranch="\033[33m $(git branch --show-current 2>/dev/null) \033[0m"
      GitStatus="\033[94mgit:[$GitBranch\033[94m] \033[0m"
    fi
else
  Gitstatus=""
fi

echo -e "$GitStatus" 
}

## The prompt
PROMPT_COMMAND='PS1_CMD1=$(gitstat 2>/dev/null)'
PS1='\[\e[96;1m\]\u\[\e[0m\] \[\e[97;1m\]>\[\e[0m\] \[\e[95;1m\]\W\[\e[0m\] \[\e[94;1m\]${PS1_CMD1}\[\e[0m\]'

# Variables
export EDITOR='vim'
export VISUAL='vim'
export PATH="$PATH:/$HOME/.local/bin"

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias xcpy="xsel -ib"
alias xpst="xsel -ob"

alias ls="lsd"
alias la="ls -al"
alias ll="ls -l"

alias ff="fastfetch --kitty-icat ~/Pictures/.pp/neofetch.png"

alias vi="vim"
alias watch="watch -n 0.5 -t"
alias reset="source ~/.bashrc"

alias tmuxa="tmux attach-session"
alias tmuxk="tmux kill-session -t"

alias arpscan="arp-scan --localnet"
