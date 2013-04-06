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
export PATH="./cabal-dev/bin:$HOME/.cabal/bin:$PATH"

# get gvim working properly
function gvim () { (/usr/bin/gvim -f "$@" &) }

# setup java
export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64/jre"
export JRE_HOME="/usr/lib/jvm/java-7-openjdk-amd64/jre"
export JDK_HOME="/usr/lib/jvm/java-7-openjdk-amd64"

# setup maven
export M2_HOME="/home/brendan/workspace/tools/maven"
export PATH="$M2_HOME/bin:$PATH"

# setup android-sdk
export ANDROID_HOME="/home/brendan/workspace/tools/android-sdk"
export ANDROID_SDK="/home/brendan/workspace/tools/android-sdk"
export ANDROID_TOOLS="$ANDROID_HOME/tools"
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"

### Aliases ###

# networking
alias hypert="sudo minicom -b 9600 -D /dev/ttyUSB0"

# rails - stolen from https://gist.github.com/2960483
alias b="bundle"
alias bu="b update"
alias be="b exec"
alias compile="be rake assets:precompile"
alias edit="vim"

# vagrant
alias v="vagrant"
alias up="v up"
alias re="v reload"
alias reup="v destroy -f && up"

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
