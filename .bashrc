# ~/.bashrc

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# better history
HISTCONTROL=ignoredups:erasedups
HISTSIZE=1000
HISTFILESIZE=2000
HISTIGNORE="ls:cd:cd -:pwd:exit:clear"
shopt -s histappend

set -o noclobber
set -o notify
shopt -s checkwinsize

export EDITOR=nvim
export VISUAL=nvim
export PAGER=less
export LESS='-R'

# source alias file
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# better tab completion
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
shopt -s autocd

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

mkcd() {
    mkdir -p "$1" && cd "$1"
}

extract() {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.zip)       unzip $1       ;;
            *.7z)        7z x $1        ;;
            *)           echo "'$1' cannot be extracted" ;;
        esac
    fi
}

PS1='$(tput setaf 38)\W \[$(tput sgr0)\]$ '
