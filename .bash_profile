# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
if [[ $OSTYPE == 'darwin'* ]]; then # HOMEBREW python
    PATH=/usr/local/opt/python/libexec/bin:$PATH
fi
PATH=$HOME/.local/bin:$HOME/Library/Android/sdk/tools:$HOME/Library/Android/sdk/platform-tools:$PATH
export PATH
# export JAVA_HOME=$(/usr/libexec/java_home)    # for mac

# Hack for intellij
if (ps -p$PPID | \grep gnome-terminal > /dev/null) \
    || (ps -p$PPID | \grep login > /dev/null); then
	tmx main
else
	tmx intellij
fi
