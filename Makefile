install: link packages workspace

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
    compiz compiz-plugins compizconfig-settings-manager \
    curl libcurl4-openssl-dev \
    git git-gui \
    haskell-platform \
    ia32-libs \
    keepassx \
    mysql-client \
    openjdk-6-jre \
    openssh-client \
    network-manager-openvpn \
    postgresql-client \
    readline-common libreadline-dev \
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

workspace:
	git clone git://github.com/sstephenson/rbenv.git            ~/.rbenv
	git clone git://github.com/sstephenson/ruby-build.git       ~/.rbenv/plugins/ruby-build
	git clone git://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
	mkdir -p ~/workspace/tools
	cd ~/workspace/tools && wget http://yara-project.googlecode.com/files/yara-1.6.tar.gz
	cd ~/workspace/tools && wget http://dl.google.com/android/adt/adt-bundle-linux-x86_64.zip
	cd ~/workspace/tools && wget http://download.virtualbox.org/virtualbox/4.2.6/virtualbox-4.2_4.2.6-82870~Ubuntu~quantal_amd64.deb
	cd ~/workspace/tools && wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_1.4.0_amd64.deb
	cd ~/workspace/tools && wget https://launchpad.net/ubuntu/+source/chromium-browser/24.0.1312.56-0ubuntu0.12.10.3
	git clone git://github.com/PromyLOPh/pianobar.git ~/workspace/tools/pianobar
