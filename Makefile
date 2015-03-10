all: packages link workspace bin rbenv

link:
	ln -sf ~/.dotfiles/bashrc        ~/.bashrc
	ln -sf ~/.dotfiles/bash_profile  ~/.bash_profile
	ln -sf ~/.dotfiles/bash_prompt   ~/.bash_prompt
	ln -sf ~/.dotfiles/gitconfig     ~/.gitconfig

packages:
	# TODO: redo packages section

workplace:
	mkdir ~/workspace
	git clone git@github.com:fnichol/dvm.git        ~/workspace/dvm
	git clone git@github.com:jordansissel/fpm.git   ~/workspace/fpm
	git clone git@github.com:FreeRDP/FreeRDP.git    ~/workspace/FreeRDP
	git clone git@github.com:PromyLOPh/pianobar.git ~/workspace/pianobar

bin:
	mkdir ~/bin
	curl https://stedolan.github.io/jq/download/linux64/jq -o ~/bin/jq
	chmod +x ~/bin/*

rbenv:
	git clone git@github.com:sstephenson/rbenv.git            ~/.rbenv
	git clone git@github.com:sstephenson/ruby-build.git       ~/.rbenv/plugins/ruby-build
	git clone git@github.com:sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
