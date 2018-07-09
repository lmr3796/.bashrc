# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$HOME/.local/bin:$HOME/Library/Android/sdk/tools:$HOME/Library/Android/sdk/platform-tools:$PATH
export PATH
export JAVA_HOME=$(/usr/libexec/java_home)

# Hack for intellij
if (ps -p$PPID | grep gnome-terminal) || (ps -p$PPID | grep login); then
	tmx main
else
	tmx intellij
fi

# Yahoo Yubikey
export SSH_AUTH_SOCK=$HOME/.yubiagent/sock
