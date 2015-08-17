#!/bin/sh

# install program
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install build-essential xorg openbox spacefm udevil sshfs -y
sudo apt-get install gksu hal-info upower pm-utils xvfb -y
sudo apt-get install feh lxappearance obmenu gnome-icon-theme ubuntu-mono gtk2-engines-murrine gtk2-engines-pixbuf gtk3-engines-unico dmz-cursor-theme -y
sudo apt-get install fcitx-rime tint2 fonts-droid numlockx sakura xdg-user-dirs -y
sudo apt-get install zip unzip -y

# set audio
sudo apt-get install alsa-base alsa-utils alsa-tools-gui -y
sudo alsactl init

# set autostart
mkdir ~/.config
mkdir ~/.config/openbox
cd ~/.config/openbox
echo 'eval `cat $HOME/.fehbg` &' > autostart
echo '(sleep 1s && tint2) &' >> autostart

# set path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin/:/sbin:/bin:/usr/game:$PATH
rm -rf ~/.cache
ln -sT /tmp ~/.cache

# startx openbox-session
cd ~

cp /etc/X11/xinit/xinitrc ~/.xinitrc
echo 'exec openbox-session' >> .xinitrc

cp /etc/profile ~/.profile
echo '
if [ -z "$DISPLAY" ] && [ $(tty) == /dev/tty1 ]; then
	startx
fi
' >> .profile
