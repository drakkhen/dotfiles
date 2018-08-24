GPG_TTY=$(tty)
export GPG_TTY

function load_git_helpers
{
    if in_git_repository
    then
        echo -e '\033[0;32mAugmenting environment with git helpers.\033[0m'
        unset PROMPT_COMMAND
        . ~/.git_prompt
        . ~/.git_complete
    fi
}

if [[ $- == *i* ]]
then
    . ~/.functions
    . ~/.env

    PROMPT_COMMAND="load_git_helpers"

    if [ -f ~/.bashrc_local ]; then . ~/.bashrc_local; fi
fi

grep -qs Raspberry\ Pi /proc/device-tree/model
if [ $? -eq 0 ]
then
    . ~/.pi_functions
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

if [ -f ~/.aliases ]; then . ~/.aliases; fi
