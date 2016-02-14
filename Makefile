all: link packages bin workspace haskell

link:
	ln -sf ~/.dotfiles/bashrc        ~/.bashrc
	ln -sf ~/.dotfiles/bash_profile  ~/.bash_profile
	ln -sf ~/.dotfiles/bash_prompt   ~/.bash_prompt
	ln -sf ~/.dotfiles/gitconfig     ~/.gitconfig

packages:
	# General
	sudo yum install -y \
		alacarte git git-gui gnome-tweak-tool java-1.8.0-openjdk net-tools \
		python-pip python-virtualenv python-virtualenvwrapper tar unzip \
		vim-enhanced pidgin
	# Build Tools
	sudo yum install -y \
		cpp gcc gcc-c++ cmake make
	# Libraries
	sudo yum install -y \
		glib-devel glib2-devel glibc-devel glibc-headers gnutls-devel \
		kernel-headers kernel-devel libao-devel libgcrypt-devel libffi-devel \
		openssl-devel yasm yasm-devel json-c-devel libcurl-devel

bin:
	mkdir -p ~/.local/bin

workspace:
	mkdir -p ~/workspace/b0d0nne11
	mkdir -p ~/workspace/golang/{bin,pkg,src}

jq: bin
	curl https://stedolan.github.io/jq/download/linux64/jq -o ~/.local/bin/jq
	chmod +x ~/.local/bin/jq

rbenv:
	git clone git@github.com:sstephenson/rbenv.git            ~/.rbenv
	git clone git@github.com:sstephenson/ruby-build.git       ~/.rbenv/plugins/ruby-build
	git clone git@github.com:sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

pianobar: workspace
	git clone git@github.com:PromyLOPh/pianobar.git ~/workspace/pianobar

haskell:
	sudo yum install -y haskell-platform
	cabal install hdevtools hoogle ghc-mod hlint
