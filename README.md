# b0d0nne11's dotfiles

These are my personal dotfiles.

## Installation

This repo is designed to be used with [homeshick](https://github.com/andsens/homeshick).

To setup from scratch:
```bash
# Install prerequisites
sudo dnf -y update
sudo dnf -y install git tmux vim zsh

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
