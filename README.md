# b0d0nne11's dotfiles

These are my personal dotfiles.

## Installation

This repo is designed to be used with [homeshick](https://github.com/andsens/homeshick).

To setup from scratch:
```bash
# Install prerequisites
sudo dnf -y update
sudo dnf -y install git git-gui tmux vim zsh

# Setup PRM Fusion
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Install codecs
sudo dnf install -y 'gstreamer1-plugins-good*' 'gstreamer1-plugins-bad*' 'gstreamer1-plugins-ugly*'

# Install rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
mkdir -p ~/.rbenv/plugins
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# Install pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
mkdir -p ~/.pyenv/plugins
git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

# Install ghcup
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

# Change the login shell
sudo usermod -s $(which zsh) $USER

# Install homeshick
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source $HOME/.homesick/repos/homeshick/homeshick.sh

# Install dotfiles
homeshick clone b0d0nne11/dotfiles
homeshick clone ohmyzsh/ohmyzsh

# Install Vim Plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Install Tmux Plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# and https://github.com/tmux-plugins/tpm#installing-plugins
```
