#!/bin/bash

#. /etc/profile

if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
