#Common

sh common_provision.sh


#Virtualbox + Vagrant
echo "################"
echo "VirtualBox Install"
virtualbox_uri="http://download.virtualbox.org/virtualbox/5.0.6/virtualbox-5.0_5.0.6-103037\~Ubuntu\~trusty_amd64.deb"
virtualbox_file="virtualbox-5.0_5.0.6-103037~Ubuntu~trusty_amd64.deb"
if [ -f ~/Downloads/$virtualbox_file ];
then
    echo "File $FILE exists."
else
    echo "File $FILE does not exist."
    wget $virtualbox_uri -P ~/Downloads
    sudo dpkg -i $virtualbox_file
fi

echo "################"
echo "Vagrant install"
vagrant_file="vagrant_1.7.4_x86_64.deb"
if [ -f ~/Downloads/$vagrant_file ];
then
    echo "File $FILE exists."
else
    echo "File $FILE does not exist."
    wget https://dl.bintray.com/mitchellh/vagrant/$vagrant_file -P ~/Downloads
    sudo dpkg -i ~/Downloads/$vagrant_file
fi

#ChefDK + Vagrant plugins
echo "################"
echo "ChefDK install"
chefdk_file="chefdk_0.8.1-1_amd64.deb"
if [ -f ~/Downloads/$chefdk_file ];
then
   echo "File $FILE exists."
else
   echo "File $FILE does not exist."
   wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/$chefdk_file -P ~/Downloads
   sudo dpkg -i ~/Downloads/$chefdk_file
fi

echo "################"
echo "Vagrant plugins"

sudo vagrant plugin install vagrant-omnibus vagrant-chef-zero vagrant-berkshelf


#Desktop

# - PPA
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-add-repository -y ppa:rael-gc/scudcloud

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'

sudo sh -c "echo 'deb http://ppa.launchpad.net/happy-neko/ps3mediaserver/ubuntu raring main' > /etc/apt/sources.list.d/happy-neko-ubuntu-ps3mediaserver-vivid.list"
sudo sh -c "echo 'deb http://archive.canonical.com/ubuntu/ trusty partner' > /etc/apt/sources.list.d/canonical_partner.list"

#
echo "Updating..."
sudo apt-get update -qq

# - Applications
sudo apt-get install -yq gnome-shell ubuntu-gnome-desktop
sudo apt-get install -yq network-manager-vpnc openvpn

sudo apt-get install -yq cairo-dock
sudo apt-get install -yq terminator

sudo apt-get install -yq xchat scudcloud hunspell-en-us

sudo apt-get install -yq skype sni-qt:i386
sudo apt-get install -yq pgadmin3
sudo apt-get install -yq google-chrome-stable
sudo apt-get install -yq filezilla

sudo apt-get install -yq sublime-text-installer
sudo apt-get install -yq oracle-java8-installer

sudo apt-get install -yq vlc ps3mediaserver


#dotfiles
sh dotfiles.sh

#Dropbox
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
