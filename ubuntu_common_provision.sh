
#Common
echo "Updating..."

sudo apt-get update -qq
sudo apt-upgrade -yqq

sudo apt-get install -yq software-properties-common cmake
sudo apt-get install -yq git vim zsh git-core
sudo apt-get install -yq htop curl tree ack-grep

sudo apt-get install -yq python-pip python-dev
sudo apt-get install -yq build-essential ruby1.9.1 ruby1.9.1-dev

sudo apt-get install -yq postgresql-client

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
sudo chsh -s `which zsh`

sudo apt-get -yq install autojump

sudo pip install pip --upgrade
sudo pip install virtualenv

git config --global color.ui true
git config --global user.email "curran736@gmail.com"
git config --global user.name "John Curran"
git config --global push.default simple
git config --global core.excludesfile $HOME/.gitignore_global

