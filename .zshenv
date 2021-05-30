ZDOTDIR="$HOME/.config/zsh"

# Java
JAVA_HOME="/usr/local/opt/openjdk/"
PATH="$PATH:$JAVA_HOME/bin"

# Python3 (homebrew)
PATH="$PATH:/usr/local/bin/python3"

# Homebrew (brew doctor)
PATH="/usr/local/sbin:$PATH"

# GCC and G++
PATH="/usr/local/bin/gcc:$PATH"
PATH="/usr/local/bin/g++:$PATH"

# Go stuff
GOPATH=$HOME/coding/go/
GOROOT="/usr/local/opt/go/libexec/"
PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

export PATH ZDOTDIR GOPATH GOROOT

