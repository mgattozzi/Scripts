#Setup all needed programs
sudo pacman -S multilib-devel git zsh libreoffice xorg-server xorg-xbacklight steam ruby wget curl ttf-inconsolata rxvt-unicode vim;
#Home Directory
cd ~/;
mkdir Github/;

#Clone Github repositories
cd Github;
git clone https://github.com/mgattozzi/mgattozzi.github.io;
git clone https://github.com/mgattozzi/Scripts;

#Install yaourt and install AUR programs
cd Scripts/Arch\ Linux\ Scripts;
sh yaourt.sh;
yaourt -S spotify;

#Install configuration files

#Remove unwanted files/programs

#Install Gems

#Install greysky repository and blackarch repository
curl -s http://blackarch.org/strap.sh | sudo sh;
sudo sign-key.sh 5EE46C4C; #Sign repo-ck key
sudo pacman -S blackarch linux-ck-ivybridge;
sudo pacman -Syyu;
