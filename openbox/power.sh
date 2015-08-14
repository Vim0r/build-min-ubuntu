#!/bin/sh

# add usr to power group
sudo groupadd power
sudo gpasswd -a nuc power

# set polkit
sudo chmod 775 /etc/polkit-1/localauthority
sudo chmod 775 /var/lib/polkit-1
sudo sed -i 's/auth_admin_keep/yes/' /usr/share/polkit-1/actions/org.freedesktop.consolekit.policy
