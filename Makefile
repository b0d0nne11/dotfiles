install: link

link:
	ln -sf ~/.dotfiles/.bash_aliases  ~/.bash_aliases
	ln -sf ~/.dotfiles/.gitconfig     ~/.gitconfig
	ln -sf ~/.dotfiles/.puppet        ~/.puppet
	ln -sf ~/.dotfiles/.rbenv-version ~/.rbenv-version

packages:
	# general nice-to-haves
	sudo apt-get -y install \
    linux-headers-$(uname -r) \
    build-essential \
    curl \
    git git-gui \
    haskell-platform \
    ia32-libs \
    keepassx \
    mysql-client \
    openjdk-7-jdk \
    openssh openssh-client \
    openvpn \
    postgresql-client \
    vim vim-gnome
	# common RoR deps
	sudo apt-get -y install \
    libcurl4-openssl-dev \
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

workspace:
	make -p ~/workspace/tools
	cd ~/workspace/tools
	wget http://yara-project.googlecode.com/files/yara-1.6.tar.gz
	wget http://dl.google.com/android/adt/adt-bundle-linux-x86_64.zip
