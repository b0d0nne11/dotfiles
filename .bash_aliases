#!/bin/bash

### Profile ###

export TERM=xterm-256color
export EDITOR=vim

# add my local gpg key
export GPGKEY='A3AE3D18'

# install local bins
export PATH="/home/brendan/bin:$PATH"

# install rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
export RBENV_ROOT="/home/brendan/.rbenv"
eval "$(rbenv init -)"

# install haskell bins
export PATH="$HOME/.cabal/bin:$PATH"

# get gvim working properly
function gvim () { (/usr/bin/gvim -f "$@" &) }

# setup java
export JAVA_HOME="/usr/lib/jvm/java-6-openjdk-amd64/jre"
export JRE_HOME="/usr/lib/jvm/java-6-openjdk-amd64/jre"

### Aliases ###

# networking
alias hypert="sudo minicom -b 9600 -D /dev/ttyUSB0"

# git - stolen from https://github.com/holman/dotfiles/blob/master/git/aliases.zsh
#alias gl='git pull --prune'
#alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
#alias gp='git push origin HEAD'
#alias gd='git diff'
#alias ga='git add'
#alias gc='git commit'
#alias gca='git commit -a'
#alias gco='git checkout'
#alias gnb='git checkout -b'
#alias gb='git branch'
#alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
#alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"

# rails - stolen from https://gist.github.com/2960483
alias b="bundle"
alias bu="b update"
alias be="b exec"
alias compile="be rake assets:precompile"
alias edit="vim"

# vagrant
alias v="be vagrant"
alias up="v up"
alias re="v reload"

# librarian-chef
alias lib="librarian-chef"
alias libi="lib install"
alias libu="lib update"

function newdb {
  be rake db:drop:all
  be rake db:create:all
  be rake db:setup
  be rake db:test:prepare
}
