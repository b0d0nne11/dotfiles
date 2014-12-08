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

# Ruby

alias b='bundle'
alias bu='b update'
alias be='b exec'
alias compile='be rake assets:precompile'

function newdb {
	be rake db:drop:all
	be rake db:create:all
	be rake db:setup
	be rake db:test:prepare
}

# Python
alias activate='source venv/bin/activate'

# Networking
alias hypert='sudo minicom -b 9600 -D /dev/ttyUSB0'

# Chef
export OPSCODE_USER="$SSO_USER"
