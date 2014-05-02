#Setup all needed programs
sudo pacman -S multilib-devel git zsh libreoffice i3 xorg-server xorg-xbacklight steam ruby wget curl ttf-dejavu terminator vim feh;
#Home Directory
cd ~/;
mkdir Github/;
mkdir BTSync/;

#Clone Github repositories
cd Github;
git clone https://github.com/mgattozzi/mgattozzi.github.io;
git clone https://github.com/mgattozzi/Scripts;
git clone https://github.com/mgattozzi/jasper-arch-linux;
git clone https://github.com/mgattozzi/Configuration;

#Install yaourt and install AUR programs
cd Scripts/Arch\ Linux\ Scripts;
sh yaourt.sh;
yaourt -S spotify btsync dropbox;
mkdir -p ~/.config/btsync	
cp /etc/btsync.conf ~/.config/btsync/btsync.conf
sudo systemctl enable btsync@michael;

#Install configuration files
cd ~/Github/Configuration;
sudo cp pacman.conf /etc/pacman.conf;
cp config ~/.i3/config;
cp i3status.conf /etc/i3status.conf;
cp .* ~/

#Remove unwanted files/programs
yaourt -R bash;

#Install Gems
gem install jekyll;

#Install greysky repository and blackarch repository
curl -s http://blackarch.org/strap.sh | sudo sh;
sudo pacman-key -r 5EE46C4C;
sudo pacman-key --lsign-key 5EE46C4C;
sudo pacman -Syyu;
echo "Setup Complete";
echo "Manual intervention is required for specific ck-kernel and bootsettings";
echo "Set up your btsync config";
