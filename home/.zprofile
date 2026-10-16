eval "$(/opt/homebrew/bin/brew shellenv)"

# https://github.com/andsens/homeshick/wiki/Installation#zsh-completion
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

eval "$(jenv init -)"

export DOCKER_HOST="unix://$HOME/.docker/run/docker.sock"
export PATH="$PATH:$HOME/.docker/bin"

export PATH="$PATH:/Users/brendan/.lmstudio/bin"

source /opt/google-cloud-sdk/completion.zsh.inc
source /opt/google-cloud-sdk/path.zsh.inc
export CLOUDSDK_PYTHON=/opt/homebrew/bin/python3.12

export IS_ARM=true # gates some GO logic

[ -f "/Users/brendan/.ghcup/env" ] && . "/Users/brendan/.ghcup/env"

