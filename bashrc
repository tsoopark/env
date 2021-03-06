# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls='ls -hF --color=tty'
alias ll='ls -l'
alias la='ls -al'
alias l='ls -CF'

alias grep='grep --color=auto'

# User prompt
export PS1="\n\[$(tput bold)\]\[$(tput sgr0)\][\033[01;37m\]\t] \[\033[38;5;194m\]\u@\H\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;223m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\n\\$ \[$(tput sgr0)\]"

# User functions

# Compression
targz() { tar -zcvf $1.tar.gz $1; }
untargz() { tar -zxvf $1; }

# Navigate
cd_func() {
    cd "$@" && ls -l;
}

alias cd=cd_func

HISTTIMEFORMAT="[%Y-%m-%d %H:%M:%S] "
