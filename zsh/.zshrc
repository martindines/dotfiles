# zsh auto-updates
DISABLE_AUTO_UPDATE="true"

# Prompt
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%n:%F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
RPROMPT='%F{8}%*%f'

# Aliases
source ~/.bash_aliases