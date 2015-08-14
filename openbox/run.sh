#!/bin/sh

# install program
sudo apt-get install python-software-properties software-properties-common -y
sudo add-apt-repository ppa:satyajit-happy/themes -y
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install bcmwl-kernel-source broadcom-sta-common -y
sudo apt-get install build-essential xorg openbox slim thunar -y
sudo apt-get install feh lxappearance obmenu qt4-qtconfig menu gksu hal-info upower -y
sudo apt-get install gnome-icon-theme numix-gtk-theme -y
sudo apt-get install fcitx-rime xcompmgr xfce4-notifyd xfce4-terminal xfce4-indicator-plugin fonts-droid -y
sudo apt-get install wicd xfce4-screenshooter numlockx xarchiver p7zip-full rar unrar thunar-archive-plugin firefox firefox-locale-zh-hans synaptic -y

# set audio
sudo apt-get install alsa-base alsa-utils volumeicon-alsa -y
sudo alsactl init

# set path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin/:/sbin:/bin:/usr/game:$PATH

# set autostart
# set autostart
sudo cd /etc/xdg/openbox/
sudo echo '/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &' > autostart
sudo echo 'eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg) &' >> autostart
sudo echo 'eval `cat $HOME/.fehbg` &' >> autostart
sudo echo 'xcompmgr -cCfF -r5 -o.30 -l-5 -t-1 -D5 &' >> autostart
sudo echo 'xscreensaver -no-splash &' >> autostart
sudo echo 'xfce4-panel &' >> autostart
sudo echo 'volumeicon &' >> autostart
sudo echo 'numlockx on &' >> autostart

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
