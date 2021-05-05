[[ -d "$HOME/.rvm/bin" ]] && export PATH="$PATH:$HOME/.rvm/bin"
[[ -d "$HOME/.fastlane" ]] && export PATH="$HOME/.fastlane/bin:$PATH"
[[ -d "$HOME/local/bin" ]] && export PATH="$HOME/local/bin:$PATH"

export PATH="$PATH:/usr/local/sbin"

source "$HOME/.functions"
source "$HOME/.aliases"
source "$HOME/.ls_colors"

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
[[ -e "$HOME/.zshenv_local" ]] && source "$HOME/.zshenv_local"
