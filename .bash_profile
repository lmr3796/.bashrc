# .bash_profile
export BASH_SILENCE_DEPRECATION_WARNING=1       # For mac ZSH warning

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs
export JAVA_HOME=$(/usr/libexec/java_home)    # for mac
export GOPATH="${HOME}/.go"
export PATH=$PATH

if [[ $OSTYPE == 'darwin'* ]]; then     # HOMEBREW python
        PATH=/usr/local/opt/python/libexec/bin:$PATH
        export GOROOT="$(brew --prefix golang)/libexec"
        PATH="${PATH}:${GOROOT}/bin"
fi

PATH="$HOME/.local/bin:$PATH"


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Hack for intellij
if (ps -p$PPID | \grep gnome-terminal > /dev/null) \
    || (ps -p$PPID | \grep login > /dev/null); then
        tmx main
else
        tmx intellij
fi
