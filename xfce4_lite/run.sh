#!/bin/sh

# set sources.list
sudo sed -i '/cdrom/d' /etc/apt/sources.list

# install program
sudo apt-get install python-software-properties software-properties-common -y
sudo apt-add-repository ppa:xubuntu-dev/xfce-4.12 -y
sudo apt-get update && sudo apt-get dist-upgrade -y
# install wlan driver
sudo apt-get install bcmwl-kernel-source broadcom-sta-common -y
sudo apt-get install xorg build-essential xfce4 slim xubuntu-artwork gnome-icon-theme ubuntu-mono pixmap gtk2-engines-murrine gtk2-engines-pixbuf gtk3-engines-unico xfce4-indicator-plugin -y 
sudo apt-get install wicd firefox firefox-locale-zh-hans xfce4-terminal fcitx-rime language-pack-gnome-zh-hans language-pack-gnome-zh-hans-base fonts-droid qt4-qtconfig -y
#sudo apt-get purge network-manager -y

# set network
#sudo cp /etc/network/interfaces /etc/network/interfaces.bak
#sudo sed -i '/usb0/d' /etc/network/interfaces

# set path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin/:/sbin:/bin:/usr/game:$PATH
