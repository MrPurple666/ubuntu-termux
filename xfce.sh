#!/bin/bash
#Get the necessary components
apt install software-properties-common -y
add-apt-repository ppa:xubuntu-dev/staging -y
apt update
apt install udisks2 -y
echo "" > /var/lib/dpkg/info/udisks2.postinst
dpkg --configure -a
apt-mark hold udisks2
apt install keyboard-configuration -y
apt install tzdata -y
apt install sudo wget nano inetutils-tools dialog -y
apt install xfce4 xfce4-goodies xfce4-terminal dbus-x11 ffmpeg language-pack-en --no-install-recommends -y
apt install tightvncserver -y
apt --fix-broken install
apt clean

mkdir -p ~/.vnc

echo " "

echo "Running browser patch"
wget https://raw.githubusercontent.com/MrPurple666/ubuntu-termux/scripts/ubchromiumfix.sh && chmod +x ubchromiumfix.sh
 ./ubchromiumfix.sh && rm -rf ubchromiumfix.sh

echo "Running QT install"
chmod +x qt.sh
./qt.sh && rm -rf qt.sh
