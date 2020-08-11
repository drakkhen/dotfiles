export EDITOR=vim
bindkey -e
export GPG_TTY=$(tty)
export PS1='[%n@%m %~] %# '
export TERM=xterm-256color

[[ -e "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
[[ -e "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
