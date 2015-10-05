
sudo apt-get update

#Common
sudo apt-get install -y software-properties-common
sudo apt-get install -y git vim zsh git-core
sudo apt-get install -y htop curl tree ack-grep
sudo apt-get install -y python-pip
sudo apt-get install -y postgresql-client

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
sudo chsh -s `which zsh`

sudo apt-get -y install autojump


sudo pip install pip --upgrade
sudo pip install virtualenv

git config --global user.email "curran736@gmail.com"
git config --global user.name "John Curran"
git config --global push.default simple


#Desktop

# - PPA
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-add-repository -y ppa:rael-gc/scudcloud

sudo sh -c "echo 'deb http://ppa.launchpad.net/happy-neko/ps3mediaserver/ubuntu raring main' > /etc/apt/sources.list.d/happy-neko-ubuntu-ps3mediaserver-vivid.list"
sudo sh -c "echo 'deb http://archive.canonical.com/ubuntu/ trusty partner' > /etc/apt/sources.list.d/canonical_partner.list"

sudo apt-get update

# - Applications
sudo apt-get install -y gnome-shell ubuntu-gnome-desktop
sudo apt-get install -y cairo-dock
sudo apt-get install -y terminator

sudo apt-get install -y xchat scudcloud hunspell-en-us

sudo apt-get install -y skype sni-qt:i386
sudo apt-get install -y pgadmin3
sudo apt-get install -y google-chrome-stable
sudo apt-get install -y filezilla

sudo apt-get install -y sublime-text-installer
sudo apt-get install -y oracle-java8-installer

sudo apt-get install -y vlc ps3mediaserver

#Dropbox
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -


#dotfiles
sh provision_common.sh
