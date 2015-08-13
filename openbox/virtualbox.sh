#!/bin/sh

# install program
sudo apt-get install python-software-properties software-properties-common -y
sudo add-apt-repository ppa:satyajit-happy/themes -y
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install build-essential xorg openbox slim thunar -y
sudo apt-get install feh lxappearance obmenu qt4-qtconfig menu fonts-droid gksu hal-info upower -y
sudo apt-get install numix-gtk-theme -y
sudo apt-get install gnome-icon-theme fcitx-rime xcompmgr leafpad xfce4-notifyd xfce4-terminal xfce4-indicator-plugin -y

# set ramdisk
sudo cp /etc/fstab /etc/fstab.bak
cd /etc
sudo echo '' >> fstab
sudo echo 'tmpfs /tmp tmpfs noatime,size=256M 0 0' >> fstab
sudo echo 'tmpfs /var/tmp tmpfs noatime,size=256M 0 0' >> fstab
sudo echo 'tmpfs /var/log tmpfs noatime,size=256M 0 0' >> fstab
sudo echo 1 > /proc/sys/vm/swappiness
# set audio
sudo apt-get install alsa-base alsa-utils volumeicon-alsa -y
sudo alsactl init

# set autostart
mkdir ~/.config/openbox
cd ~/.config/openbox
echo '/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &' > autostart
echo 'eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg) &' >> autostart
echo 'xcompmgr -cCfF -r5 -o.30 -l-5 -t-1 -D5 &' >> autostart
echo 'eval `cat $HOME/.fehbg` &' >> autostart
echo 'xfce4-panel &' >> autostart
echo 'volumeicon &' >> autostart
echo 'numlockx on &' >> autostart
echo 'xscreensaver -no-splash &' >> autostart

# set ramdisk
rm -rf ~/.cache
ln -sT /tmp ~/.cache

# set path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin/:/sbin:/bin:/usr/game:$PATH
