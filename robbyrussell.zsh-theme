PROMPT="%B%F{14}%n %f%b%B%F{white}> %f%b %{$fg[magenta]%}%c%{$reset_color%}"
PROMPT+=' $(git_prompt_info)'
RPROMPT="%B%F{14}󰣇%b%f | %B%F{magenta}%M%f%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
