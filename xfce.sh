#!/bin/bash
#Get the necessary components
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:xubuntu-dev/staging -y
sudo apt update
sudo apt install udisks2 -y
echo "" > /var/lib/dpkg/info/udisks2.postinst
sudo dpkg --configure -a
sudo apt-mark hold udisks2
sudo apt install keyboard-configuration -y
sudo apt install tzdata -y
sudo apt install sudo wget nano inetutils-tools dialog -y
sudo apt install xfce4 xfce4-goodies xfce4-terminal dbus-x11 ffmpeg language-pack-en --no-install-recommends -y
sudo apt install tightvncserver
sudo apt --fix-broken install
sudo apt clean

mkdir -p ~/.vnc

echo " "

echo "Running browser patch"
wget https://raw.githubusercontent.com/tuanpham-dev/termux-ubuntu/master/ubchromiumfix.sh && chmod +x ubchromiumfix.sh
sudo ./ubchromiumfix.sh && rm -rf ubchromiumfix.sh
