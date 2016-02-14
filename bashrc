#!/bin/bash

# ~/.bashrc - Sourced when an interactive shell that is not a login shell is started

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# General

[ -f ~/.bash_prompt  ] && . ~/.bash_prompt;
[ -f ~/.bash_private ] && . ~/.bash_private;

export EDITOR='vim'

alias ls='ls -F --color=auto' # Compact view
alias la='ls -A'              # Compact view, show hidden
alias l1='ls -1'              # List view
alias ll='la -lh'             # List view, show hidden

alias ..='cd ..'              # Go up one directory
alias ...='cd ../..'          # Go up two directories
alias ....='cd ../../..'      # Go up three directories
alias .....='cd ../../../..'  # Go up four directories

alias c='clear'
alias q='exit'

alias xclip='xclip -selection clipboard'

# Python
alias activate='source venv/bin/activate'
