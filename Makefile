install: link packages workspace

link:
	ln -sf ~/.dotfiles/.bash_aliases  ~/.bash_aliases
	ln -sf ~/.dotfiles/.gitconfig     ~/.gitconfig
	ln -sf ~/.dotfiles/.puppet        ~/.puppet
	ln -sf ~/.dotfiles/.ruby-version  ~/.ruby-version
	ln -sf ~/.dotfiles/.tmux.conf     ~/.tmux.conf

packages:
	# general nice-to-haves
	sudo apt-get -y install \
    linux-headers-$(uname -r) \
    build-essential \
    compiz compiz-plugins compizconfig-settings-manager \
    curl libcurl4-openssl-dev \
    git git-gui meld \
    haskell-platform \
    ia32-libs \
    keepassx \
    mysql-client mysql-server \
    openjdk-6-jdk openjdk-7-jdk \
    openssh-client \
    network-manager-openvpn \
    postgresql postgresql-client \
    readline-common libreadline-dev \
    tmux \
    vim vim-gnome
	# common RoR deps
	sudo apt-get -y install \
    libpcre3 libpcre3-dev \
    libmysql++-dev \
    libxml2-dev \
    libxslt1-dev
	# burn these with fire
	sudo apt-get -y remove \
    libnss-mdns
	# update all the things
	sudo apt-get -y autoremove
	sudo apt-get -y update
	sudo apt-get -y upgrade

rbenv:
	git clone git://github.com/sstephenson/rbenv.git            ~/.rbenv
	git clone git://github.com/sstephenson/ruby-build.git       ~/.rbenv/plugins/ruby-build
	git clone git://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
	echo 'export PATH="$HOME/.rbenv/bin:$PATH"'                 >> ~/.profile
	echo 'eval "$(rbenv init -)"'                               >> ~/.profile
