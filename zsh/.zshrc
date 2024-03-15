# Locale
LANGUAGE=en_GB.UTF-8
LANG=en_GB.UTF-8
LC_CTYPE=en_GB.UTF-8
LC_ALL=en_GB.UTF-8

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