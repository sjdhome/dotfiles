export EDITOR=vim
export GOPROXY='https://goproxy.cn,direct'
export PS1='[\u@\h \W]\$ '
export PS2='> '

if [[ -d $HOME/.local/bin && ! $PATH =~ "$HOME/.local/bin" ]]; then
	export PATH=$HOME/.local/bin:$PATH
fi

if [[ -d $HOME/.cargo/bin && ! $PATH =~ "$HOME/.cargo/bin" ]]; then
	export PATH=$HOME/.cargo/bin:$PATH
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pacman='pacman --color=auto'
alias sudo='sudo ' # Preserve other aliases while using sudo, tailing space is necessary.

