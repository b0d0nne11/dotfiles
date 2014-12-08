#!/bin/bash

# ~/.bash_profile - Sourced when an interactive login shell is started

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# General
export PATH="$PATH:$HOME/.local/bin:$HOME/bin"

# Java
export JAVA_HOME='/usr/java/default/'
export PATH="$PATH:$JAVA_HOME/bin"

# Cabal
export PATH="$PATH:$HOME/.cabal/bin"

# Android SDK
export PATH="$PATH:$HOME/workspace/adt-bundle-linux/sdk/tools/"
export PATH="$PATH:$HOME/workspace/adt-bundle-linux/sdk/platform-tools/"

# Maven
export M2_HOME="/home/brendan/workspace/maven"
export PATH="$PATH:$M2_HOME/bin"

# Apache Directory Studio
export PATH="$PATH:$HOME/workspace/ApacheDirectoryStudio/"

# IntelliJ
export PATH="$PATH:$HOME/workspace/idea/bin"

# Ruby
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$PATH:$RBENV_ROOT/bin"
eval "$(rbenv init -)"

# Vagrant + DVM
eval $(dvm env)
