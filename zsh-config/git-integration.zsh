# https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh

# Git integration (show branch name on the right prompt)
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='%B'\$vcs_info_msg_0_'%b'
zstyle ':vcs_info:git:*' formats '%b'
zstyle ':vcs_info:*' enable git

# Git autocomplete
autoload -Uz compinit && compinit
