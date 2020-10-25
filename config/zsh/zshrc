# Enable colors
autoload -U colors && colors

# Prompt
source $HOME/.config/zsh/prompt.zsh

export HISTFILE=/Users/scott/.cache/zsh/zsh_history

export VISUAL="/usr/local/bin/nvim"
export EDITOR=$VISUAL

export CLICOLOR=1

export LSCOLORS=exfxcxdxbxegedabagacad

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files.

# Vi mode for zsh
[ -f $HOME/.config/zsh/vim.zsh ] && source $HOME/.config/zsh/vim.zsh

# fzf
[ -f ~/.config/zsh/.fzf.zsh ] && source ~/.config/zsh/.fzf.zsh
[ -f ~/.config/zsh/fzf-config.zsh ] && source ~/.config/zsh/fzf-config.zsh

# aliases
[ -f $HOME/.config/zsh/aliases.zsh ] && source $HOME/.config/zsh/aliases.zsh

# functions
for function in $HOME/.config/zsh/functions/*.zsh; do
  source $function
done

# Gruvbox themes for neovim fix
[ -f $HOME/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh ] && source $HOME/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh

# Git integration
source $HOME/.config/zsh/git-integration.zsh

# Other
for file in $HOME/.config/zsh/other/*.zsh; do
  source $file
done

# Syntax highlighting
[ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Change color of highlighted command
[ -f ~/.config/zsh/syntax-highlight.zsh ] && source ~/.config/zsh/syntax-highlight.zsh

