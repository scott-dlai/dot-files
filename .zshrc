# Prompt
export PS1="
%U%1~%u %# "

export CLICOLOR=1

export LSCOLORS=GxFxCxDxBxegedabagacad

export EDITOR="/usr/local/bin/nvim"

# aliases
alias ls='ls -GFlh'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -v'
alias mkdir='mkdir -v'
alias javacfx='javac --module-path ${PATH_TO_FX}'
alias javafx='java --module-path ${PATH_TO_FX}'

# Git integration
source ~/.config/zsh/git-integration.zsh

# Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Change color of highlighted command
source ~/.config/zsh/syntax-highlight.zsh

