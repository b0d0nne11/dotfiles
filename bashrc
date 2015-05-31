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

function socksproxy {
  ssh -CfN -D 12345 $1
}

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

# Systemd
alias start='systemctl --user start'
alias stop='systemctl --user stop'
alias status='systemctl --user status'
alias reload='systemctl --user reload'
alias restart='systemctl --user restart'

# Docker

function docker-machine-wrapper {
  command docker-machine $@
  if [ $# -eq 2 ]; then
    case "$1" in
    'active')
      eval "$(docker-machine env)"
      export DOCKER_IP="$(docker-machine ip)"
      systemctl --user import-environment DOCKER_HOST
      systemctl --user import-environment DOCKER_TLS_VERIFY
      systemctl --user import-environment DOCKER_CERT_PATH
      systemctl --user import-environment DOCKER_IP
      ;;
    esac
  fi
}

alias docker-machine='docker-machine-wrapper'
