# PPA for
 sudo apt update
 sudo apt install software-properties-common apt-transport-https curl

# app-fast for quicker downloads
 sudo add-apt-repository -y ppa:apt-fast/stable
 sudo apt -y install apt-fast
 echo $'\nalias apt="apt-fast"' >> ~/.bashrc
 source ~/.bashrc

# Update OS
apt upgrade

# Cleanup
 apt autoremove -y && apt autoclean -y

# Nice icon & cursor pack
 mkdir ~/.icons && cd ~/.icons
 git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git
 cd la-capitaine-icon-theme && ./configure

 sudo add-apt-repository ppa:dyatlov-igor/la-capitaine
 apt install la-capitaine-cursor-theme

# Restricted extras & multi-media codecs
 apt install ubuntu-restricted-extras libavcodec-extra

# Archive formats
 apt install unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip

# Wine
 sudo dpkg --add-architecture i386
 wget -nc https://dl.winehq.org/wine-builds/winehq.key
 sudo apt-key add winehq.key
 sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
 apt install --install-recommends winehq-stable

# Improved application speed
 apt install preload

# Reduce Overheating & Improve Battery Life
 sudo add-apt-repository ppa:linrunner/tlp
 apt install tlp tlp-rdw
 sudo tlp start

# Additional (ancient) fonts
 apt install ttf-ancient-fonts

# Commandline Applications
 apt install snapd
 sudo apt-get install xclip

  # Git
   apt install git
   git config --global user.name "Tom Wilford"
   git config --global user.email "hello@jollyblueman.com"

# GUI Applications
 sudo snap install phpstorm --classic
 sudo snap install firefox
 sudo snap install spotify

