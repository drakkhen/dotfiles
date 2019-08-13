#!/bin/bash
GPG_TTY=$(tty)
export GPG_TTY

[[ -e "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
[[ -d "$HOME/.rvm/bin" ]] && export PATH="$PATH:$HOME/.rvm/bin"
[[ -e "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -d "$HOME/.fastlane" ]] && export PATH="$HOME/.fastlane/bin:$PATH"

source "$HOME/.functions"
source "$HOME/.aliases"

function maybe_load_git_helpers
{
    if in_git_repository
    then
        echo -e '\033[0;32mAugmenting environment with git helpers.\033[0m'
        unset PROMPT_COMMAND
        source "$HOME/.git_prompt"
        source "$HOME/.git_complete"
    fi
}

PROMPT_COMMAND="maybe_load_git_helpers"

[[ -d "$HOME/local/bin" ]] && export PATH="$HOME/local/bin:$PATH"
[[ -e "$HOME/.profile_local" ]] && source "$HOME/.profile_local"
