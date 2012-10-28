install: package-purge package-install package-get link

link:
	ln -sf ~/.dotfiles/.bash_aliases  ~/.bash_aliases
	ln -sf ~/.dotfiles/.gitconfig     ~/.gitconfig
	ln -sf ~/.dotfiles/.rbenv-version ~/.rbenv-version

package-purge:
	sudo apt-get purge -y \
		ruby1.8	ruby1.8-dev libruby1.8

package-install:
	sudo apt-get install -y \
		build-essential \
		curl libcurl4-openssl-dev \
		git \
		icedtea-netx \
		keepassx \
		haskell-platform \
		libmysqlclient-dev \
		libpcre++-dev \
		libreadline-dev \
		libssl-dev \
		libxml2-dev \
		libxslt1-dev \
		libyaml-dev \
		openjdk-7-jdk \
		network-manager-openvpn \
		postfix \
		sqlite3 libsqlite3-dev \
		vim vim-gnome \
		virt-manager

package-get:
	mkdir -p ~/Documents/upstreams
	cd ~/Documents/upstreams
	wget http://download.virtualbox.org/virtualbox/4.1.18/virtualbox-4.1_4.1.18-78361~Ubuntu~precise_i386.deb

