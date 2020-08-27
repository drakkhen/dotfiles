export EDITOR=vim
bindkey -e
export GPG_TTY=$(tty)
export TERM=xterm-256color

[[ -e "$HOME/.git-prompt.zsh" ]] && source "$HOME/.git-prompt.zsh"
export PS1='[%n@%m %c] $(gitprompt)%# '

[[ -e "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
