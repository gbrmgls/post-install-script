# PREPARATIONS

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

## qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y

## lutris
sudo add-apt-repository ppa:lutris-team/lutris -y

## keepassxc
sudo add-apt-repository ppa:phoerious/keepassxc -y

## dbeaver
sudo add-apt-repository ppa:serge-rider/dbeaver-ce -y


## vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

## zerotier-one
curl -s https://install.zerotier.com | sudo bash


sudo apt update &&
sudo apt upgrade -y &&
sudo apt autoremove -y

# -----------------------------------------
# REPO APT INSTALLS

sudo apt install \
gnome-tweak-tool \
gnome-system-tools \
flameshot \
audacious \
git \
gparted \
syncthing \
snapd \
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
libreoffice \
qbittorrent \
docker.io \
linux-generic \
sqlitebrowser \
gnome-software-plugin-flatpak \
stacer \
nemo \
terminator \
bashtop \
ncdu \
ranger \
-y

# -----------------------------------------
# FLATPAKS

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub -y
sudo flatpak install \ 
discord \
runelite \
yaru-dark \
md.obsidian.Obsidian \
barrier \
postman \
kolourpaint \
stremio \
bottles \
warpinator \
-y

# -----------------------------------------
# SNAPS

sudo snap install docker

#------------------------------------------
# CLEANUP

sudo apt update && 
sudo apt upgrade -y && 
sudo apt autoremove -y 

# -----------------------------------------

# GNOME EXTENSIONS
##  dash to pannel, bluetooth quick connect

# MANUAL INSTALLS
## veracrypt, xampp, anydesk, chrome, virtualbox, etcher, ngrok
