#!/bin/bash

#. /etc/profile

if [ -f ~/.bashrc ]; then . ~/.bashrc; fi


if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
