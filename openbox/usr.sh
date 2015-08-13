#!/bin/sh

# set ramdisk
rm -rf ~/.cache
ln -sT /tmp ~/.cache

# set path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin/:/sbin:/bin:/usr/game:$PATH

# set autostart
mkdir ~/.config/openbox
cd ~/.config/openbox
echo '/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &' > autostart
echo 'eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg) &' >> autostart
echo 'eval `cat $HOME/.fehbg` &' >> autostart
echo 'numlockx on &' >> autostart
echo 'xscreensaver -no-splash &' >> autostart
echo 'tint2 &' >> autostart
echo 'xcompmgr -cCfF -r5 -o.30 -l-5 -t-1 -D5 &' >> autostart
echo 'volumeicon &' >> autostart
