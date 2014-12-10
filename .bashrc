if [[ $- == *i* ]]
then
    . ~/.functions
    . ~/.env
    . ~/.dynamic_window_name

    . ~/.git_script
    . ~/.git_complete

    if [ -f ~/.tmate_messages ]; then . ~/.tmate_messages; fi
    if [ -f ~/.bashrc_local ]; then . ~/.bashrc_local; fi
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
