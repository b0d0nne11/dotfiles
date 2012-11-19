install: package-install package-get link

link:
	ln -sf ~/.dotfiles/.bash_aliases  ~/.bash_aliases
	ln -sf ~/.dotfiles/.gitconfig     ~/.gitconfig
	ln -sf ~/.dotfiles/.puppet        ~/.puppet
	ln -sf ~/.dotfiles/.rbenv-version ~/.rbenv-version

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
	mkdir -p ~/Documents/DLs
	cd ~/Documents/DLs && wget http://download.virtualbox.org/virtualbox/4.2.4/virtualbox-4.2_4.2.4-81684~Ubuntu~precise_i386.deb
	cd ~/Documents/DLs && wget http://dl.google.com/android/adt/adt-bundle-linux-x86.zip
