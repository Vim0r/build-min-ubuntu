#!/bin/sh

# install program
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install build-essential xorg openbox thunar -y
sudo apt-get install bcmwl-kernel-source broadcom-sta-common -y
sudo apt-get install gksu hal-info upower pm-utils python-software-properties software-properties-common -y
sudo apt-get install feh lxappearance obmenu qt4-qtconfig menu gnome-icon-theme-full pixmap gtk2-engines-murrine gtk2-engines-pixbuf dmz-cursor-theme -y
sudo apt-get install fcitx-rime xcompmgr xfce4-notifyd xfce4-terminal xfce4-indicator-plugin fonts-droid xscreensaver -y
sudo apt-get install wicd xfce4-screenshooter xarchiver unzip p7zip-full rar unrar thunar-archive-plugin firefox firefox-locale-zh-hans -y

# set audio
sudo apt-get install alsa-base alsa-utils -y
sudo alsactl init
sudo apt-get install xfce4-mixer -y

# set path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin/:/sbin:/bin:/usr/game:$PATH
rm -rf ~/.cache
ln -sT /tmp ~/.cache

# set autostart
mkdir ~/.config/openbox
cd ~/.config/openbox
echo 'xscreensaver -no-splash &' > autostart
echo 'eval `cat $HOME/.fehbg` &' >> autostart
echo 'xcompmgr -cCfF -r5 -o.30 -l-5 -t-1 -D5 &' >> autostart
echo 'xfce4-panel &' >> autostart

# set network
mkdir ~/bak
cp /etc/network/interfaces ~/bak
sudo sed -i '/usb/d' /etc/network/interfaces
