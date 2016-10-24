GPG_TTY=$(tty)
export GPG_TTY

if [ -f "${HOME}/.gpg-agent-info" ]; then
    . "${HOME}/.gpg-agent-info"
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
fi

gpg-agent -q 2> /dev/null
if [[ $? -ne 0 ]]; then
  eval $(gpg-agent --daemon --write-env-file "${HOME}/.gpg-agent-info")
fi

function load_git_helpers
{
    if in_git_repository
    then
        echo -e '\033[0;32mAugmenting environment with git helpers.\033[0m'
        . ~/.git_prompt
        . ~/.git_complete
        PROMPT_COMMAND=`echo $PROMPT_COMMAND | sed 's/; load_git_helpers//g'`
    fi
}

if [[ $- == *i* ]]
then
    . ~/.functions
    . ~/.env
    . ~/.dynamic_window_name

    PROMPT_COMMAND="$PROMPT_COMMAND; load_git_helpers"

    if [ -f ~/.tmate_messages ]; then . ~/.tmate_messages; fi
    if [ -f ~/.bashrc_local ]; then . ~/.bashrc_local; fi
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
