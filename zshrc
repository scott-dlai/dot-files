# Prompt
export PS1="
%U%1~%u %# "

export CLICOLOR=1

export LSCOLORS=exfxcxdxbxegedabagacad

export EDITOR="/usr/local/bin/nvim"

# aliases
alias ls='ls -GFlh'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -v'
alias mkdir='mkdir -v'
alias ln='ln -v'
alias javacfx='javac --module-path ${PATH_TO_FX}'
alias javafx='java --module-path ${PATH_TO_FX}'
alias vim='nvim'
alias vimdiff='nvim -d'
alias du='du -h'
alias df='df -h'
alias python='/usr/local/bin/python3'
alias pip='/usr/local/bin/pip3'
alias g++='g++-10'
alias gcc='gcc-10'

# Gruvbox themes for neovim fix
source /Users/scott/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh

# Git integration
source ~/.config/zsh/git-integration.zsh

# Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Change color of highlighted command
source ~/.config/zsh/syntax-highlight.zsh
