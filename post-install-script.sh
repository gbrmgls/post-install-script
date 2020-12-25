# PREPARATIONS

## qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y

## lutris
sudo add-apt-repository ppa:lutris-team/lutris -y

## keepassxc
sudo add-apt-repository ppa:phoerious/keepassxc -y

## dbeaver
sudo add-apt-repository ppa:serge-rider/dbeaver-ce -y

## docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
## docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

## vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

## zerotier-one
curl -s https://install.zerotier.com | sudo bash


sudo apt update &&  
sudo apt upgrade -y && 
sudo apt autoremove -y

sudo apt install \ 
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common \
-y 

# -----------------------------------------
# REPO APT INSTALLS

sudo apt install \
gnome-tweak-tool \
flameshot \
git \
gparted \
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
solaar \
keepassxc \
dbeaver-ce \
code \
steam \
htop \
lm-sensors \
libreoffice \
qbittorrent \
gt5 \
docker-ce \
docker-ce-cli \
containerd.io \
-y 

# -----------------------------------------
# FLATPAKS

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub -y
sudo flatpak install discord runelite drawing yaru-dark obsidian -y

#------------------------------------------
# CLEANUP

sudo apt update && 
sudo apt upgrade -y && 
sudo apt autoremove -y 

# -----------------------------------------

# GNOME EXTENSIONS
##  dash to pannel, gsconnect, bluetooth quick connect

# MANUAL INSTALLS
## stremio, veracrypt, fluxion, bettercap, xampp, anydesk, chrome, virtualbox, etcher
