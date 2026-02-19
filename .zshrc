export ZSH="$HOME/.oh-my-zsh"

export EDITOR=nvim

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias sudo='sudo -E'
alias vim='nvim'

alias l='ls -lh'
alias ll='ls -alF'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
