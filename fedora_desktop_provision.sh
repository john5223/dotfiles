
sh fedora_common_provision.sh

cat << EOF > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome
baseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF

sudo dnf install -y google-chrome-stable

sudo dnf install -y \
  gnome-tweak-tool vlc docky \
  thunderbird \
  icedtea-web java-openjdk \
  gimp pidgin qbittorrent \
  youtube-dl

sudo dnf install -y VirtualBox
sudo dnf install -y wine

sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-steam.repo
sudo dnf -y install steam

sh dotfiles.sh
