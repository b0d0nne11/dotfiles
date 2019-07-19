# b0d0nne11's dotfiles

These are my personal dotfiles.

## Installation

This repo is designed to be used with [homeshick](https://github.com/andsens/homeshick).

To setup from scratch:
```bash
# Install prerequisites
sudo dnf -y update
sudo dnf -y install git tmux vim zsh

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Change the login shell
chsh -s /bin/zsh

# Install homeshick
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

# Install dotfiles
homeshick clone b0d0nne11/dotfiles
homeshick clone robbyrussell/oh-my-zsh

# Link all the things!
homeshick link dotfiles
```

To setup additional tools:
```
# https://rpmfusion.org
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# https://github.com/rbenv/rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# https://github.com/rbenv/ruby-build
mkdir ~/.rbenv/plugins
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# https://github.com/pyenv/pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
# https://github.com/pyenv/pyenv-virtualenv
mkdir ~/.pyenv/plugins
git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

# https://docs.haskellstack.org/en/stable/README/
curl -sSL https://get.haskellstack.org/ | sh

# https://github.com/tmux-plugins/tpm#installing-plugins

# https://golang.org/doc/install
wget -P ~/Downloads https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
tar -C /usr/local -xzf ~/Downloads/go1.12.7.linux-amd64.tar.gz
```

## License

```
Copyright 2017 Brendan O'Donnell

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
