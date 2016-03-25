sudo dnf install -y gcc gcc-c++ kernel-devel kernel-headers
rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm

sudo dnf install -y \
  vim git cmake \
  python python-devel python-pip \
  ruby \
  tmux unzip lz4 \
  zsh autojump-zsh 

sudo pip install pip --upgrade
sudo pip install virtualenv

git config --global color.ui true
git config --global user.email "curran736@gmail.com"
git config --global user.name "John Curran"
git config --global push.default simple
git config --global core.excludesfile $HOME/.gitignore_global

#oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
