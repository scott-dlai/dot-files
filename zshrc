# Prompt
export PS1="
%U%1~%u %# "

export CLICOLOR=1

export LSCOLORS=exfxcxdxbxegedabagacad

# Stop zsh from silently switch to vi mode.
bindkey -e

# aliases
source ~/.config/zsh/alias.zsh

# functions
source ~/.config/zsh/functions.zsh

# Gruvbox themes for neovim fix
source /Users/scott/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh

# Git integration
source ~/.config/zsh/git-integration.zsh

# Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Change color of highlighted command
source ~/.config/zsh/syntax-highlight.zsh

