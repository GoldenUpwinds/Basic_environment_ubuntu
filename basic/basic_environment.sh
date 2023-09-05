#！/bin/bash

sudo apt-get -y install git fcitx
sudo snap install vlc

sudo apt-get -y install ntpdate
sudo ntpdate time.windows.com
sudo hwclock --localtime --systohc