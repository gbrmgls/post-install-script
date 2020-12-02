# Preparations

## lutris
sudo add-apt-repository ppa:lutris-team/lutris -y

## keepassxc
sudo add-apt-repository ppa:phoerious/keepassxc -y

## dbeaver
sudo add-apt-repository ppa:serge-rider/dbeaver-ce -y

## qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y

## vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

## joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash


sudo apt update &&  
sudo apt upgrade -y && 
sudo apt autoremove -y

sudo apt install apt-transport-https -y 

# -----------------------------------------

# repo apt installs
sudo apt install \
gnome-tweak-tool \
flameshot \
git \
gnome-boxes \
pinta \
syncthing \
snapd \
alacarte \
npm \
tmux \
android-tools-adb \
android-tools-fastboot \
vlc \
flatpak \
lutris \
net-tools \
solaar \
keepassxc \
dbeaver-ce \
qbittorrent \
code \
steam \
htop \
-y 

# -----------------------------------------

# flatpaks
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo -y
sudo flatpak install flathub -y
sudo flatpak install discord runelite postman-y

#------------------------------------------

# snaps
sudo snap install docker

#------------------------------------------


# externals
mkdir debs 

# chrome
wget -O ./debs/chrome.deb -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt install ./debs/*.deb -y

rm -rf ./debs

# -----------------------------------------

# cleanup
sudo apt update && 
sudo apt upgrade -y && 
sudo apt autoremove -y 

# -----------------------------------------

# gnome extensions:
##  dash to pannel, gsconnect, bluetooth quick connect

# manual installs:
## stremio, veracrypt, fluxion, bettercap, xampp, anydesk
