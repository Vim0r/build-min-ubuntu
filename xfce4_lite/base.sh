#!/bin/sh

# set sources.list
sudo sed -i '/cdrom/d' /etc/apt/sources.list

# install program
sudo apt-get install python-software-properties software-properties-common -y
sudo apt-add-repository ppa:xubuntu-dev/xfce-4.12 -y
sudo apt-get update && sudo apt-get dist-upgrade -y
# install wlan driver
sudo apt-get install bcmwl-kernel-source broadcom-sta-common -y
sudo apt-get install xorg build-essential xfce4 slim xubuntu-artwork gtk2-engines-xfce gtk3-engines-xfce pixmap xfce4-indicator-plugin -y 
sudo apt-get install wicd firefox firefox-locale-zh-hans gnome-terminal fcitx-rime gedit synaptic language-pack-gnome-zh-hans language-pack-gnome-zh-hans-base fonts-droid qt4-qtconfig -y
#sudo apt-get purge network-manager -y

# set network
#sudo cp /etc/network/interfaces /etc/network/interfaces.bak
#sudo sed -i '/usb0/d' /etc/network/interfaces

# set path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin/:/sbin:/bin:/usr/game:$PATH
