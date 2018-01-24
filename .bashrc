# BASHRC (co-operate with .shrc, .profile)
#
#

## BASH: this will run on each non-login and interactive shell.

export TERM=xterm-256color
export EDITOR=vim

if [ -f $HOME/.git-prompt.sh ]; then
	source $HOME/.git-prompt.sh
fi
if [ -f $HOME/.git-completion.bash ]; then
	source $HOME/.git-completion.bash
fi
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWCOLORHINTS="auto"
export GIT_PS1_SHOWSTASHSTATE="true"
export PS1='\[\033[01;32m\]\u@\h\[\033[1;37m\]:'
if [ "x$YROOT_NAME" != "x" ]; then
	PS1=$PS1'\[\033[0;33m\] [yroot: '$YROOT_NAME'] '
fi
export PS1=$PS1'\[\033[1;37m\]\w\[\033[0;33m\]$(__git_ps1 " (%s)") \[\033[0;37m\]\$\[\033[00m\] '
. $HOME/.bash_aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
eval $(thefuck --alias)

function dockerbash () {
	docker exec -it $1 /bin/bash
}
