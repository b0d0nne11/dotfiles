#!/bin/bash

# ~/.bash_profile - Sourced when an interactive login shell is started

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# General
export PATH="$PATH:$HOME/.local/bin"

# Chef (needs to be before Ruby)
eval "$(chef shell-init bash)"

# Java
export JAVA_HOME='/usr/lib/jvm/jre-1.8.0-openjdk/'
export PATH="$PATH:$JAVA_HOME/bin"

# Ruby
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$PATH:$RBENV_ROOT/bin"
eval "$(rbenv init -)"

# Python
export WORKON_HOME="$HOME/.virtualenvs"
source /etc/profile.d/virtualenvwrapper.sh

# Golang
export GOPATH="$HOME/workspace/golang"
export PATH="$PATH:$GOPATH/bin"

# Systemd
systemctl --user import-environment PATH
