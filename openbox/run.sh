#!/bin/sh

# install program
sudo apt-get install python-software-properties software-properties-common -y
sudo add-apt-repository ppa:satyajit-happy/themes -y
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install build-essential xorg openbox slim thunar -y
sudo apt-get install bcmwl-kernel-source broadcom-sta-common -y
sudo apt-get install feh lxappearance obmenu qt4-qtconfig menu gksu hal-info upower -y
sudo apt-get install gnome-icon-theme numix-gtk-theme -y
sudo apt-get install fcitx-rime xcompmgr xfce4-notifyd xfce4-terminal xfce4-indicator-plugin fonts-droid xscreensaver -y
sudo apt-get install wicd xfce4-screenshooter xarchiver unzip p7zip-full rar unrar thunar-archive-plugin firefox firefox-locale-zh-hans -y

# set audio
sudo apt-get install alsa-base alsa-utils -y
sudo alsactl init
sudo apt-get install volumeicon-alsa -y

# set path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin/:/sbin:/bin:/usr/game:$PATH
rm -rf ~/.cache
ln -sT /tmp ~/.cache

# set autostart
mkdir ~/.config/openbox
cd ~/.config/openbox
echo 'xscreensaver -no-splash &' > autostart
echo 'volumeicon &' >> autostart
echo 'eval `cat $HOME/.fehbg` &' >> autostart
echo 'xcompmgr -cCfF -r5 -o.30 -l-5 -t-1 -D5 &' >> autostart
echo 'xfce4-panel &' >> autostart

# set network
sudo sed '/usb/d' /etc/network/interfaces

# set terminal
# =======add in /home/vm/.config/openbox/rc.xml==========
#    </keybind>
#       <keybind key="F12">
#      <action name="Execute">
#        <command>    xfce4-terminal --drop-down</command>
#      </action>
#    </keybind>
# =======edit in /home/vm/.config/openbox/rc.xml==========
#    <keybind key="W-Home">
#      <action name="Execute">
#        <command>xfce4-screenshooter</command>
#      </action>
#    </keybind>
