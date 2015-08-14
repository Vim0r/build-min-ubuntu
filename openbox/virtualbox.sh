#!/bin/sh

# install program
sudo apt-get install python-software-properties software-properties-common -y
sudo add-apt-repository ppa:satyajit-happy/themes -y
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install build-essential xorg openbox slim thunar -y
sudo apt-get install feh lxappearance obmenu qt4-qtconfig menu gksu hal-info upower fonts-droid -y
sudo apt-get install gnome-icon-theme numix-gtk-theme -y
sudo apt-get install fcitx-rime xcompmgr leafpad xfce4-notifyd xfce4-terminal xfce4-indicator-plugin -y

# set audio
sudo apt-get install alsa-base alsa-utils -y
sudo alsactl init

# set autostart
mkdir ~/.config/openbox
cd ~/.config/openbox
echo 'xcompmgr -cCfF -r5 -o.30 -l-5 -t-1 -D5 &' > autostart
echo 'eval `cat $HOME/.fehbg` &' >> autostart
echo 'xfce4-panel &' >> autostart

# set path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin/:/sbin:/bin:/usr/game:$PATH
