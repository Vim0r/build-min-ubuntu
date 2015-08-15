#!/bin/sh

# install program
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install build-essential xorg openbox thunar -y
sudo apt-get install gksu hal-info upower pm-utils python-software-properties software-properties-common -y
sudo apt-get install gnome-icon-theme feh lxappearance obmenu menu -y
sudo apt-get install fcitx-rime fonts-droid tint2 -y
#sudo apt-get install xfce4-notifyd xfce4-terminal xfce4-indicator-plugin -y

# set audio
sudo apt-get install alsa-base alsa-utils -y
sudo alsactl init

# set autostart
mkdir ~/.config/openbox
cd ~/.config/openbox
echo 'eval `cat $HOME/.fehbg` &' > autostart

# set path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin/:/sbin:/bin:/usr/game:$PATH
