#!/bin/sh

# set sources.list
sudo sed -i '/cdrom/d' /etc/apt/sources.list

# install program
sudo apt-get install python-software-properties software-properties-common -y
sudo add-apt-repository ppa:xubuntu-dev/xfce-4.12 -y
sudo apt-get update && sudo apt-get dist-upgrade -y
sudo apt-get install xorg xfce4 slim build-essential xubuntu-artwork gtk2-engines-xfce gtk3-engines-xfce pixmap gnome-terminal fcitx-rime gedit language-pack-gnome-zh-hans language-pack-gnome-zh-hans-base fonts-droid -y

# set ramdisk
sudo cp /etc/fstab /etc/fstab.bak
cd /etc
sudo echo '' >> fstab
sudo echo 'tmpfs /tmp tmpfs noatime,size=256M 0 0' >> fstab
sudo echo 'tmpfs /var/tmp tmpfs noatime,size=256M 0 0' >> fstab
sudo echo 'tmpfs /var/log tmpfs noatime,size=256M 0 0' >> fstab
sudo echo 1 > /proc/sys/vm/swappiness
