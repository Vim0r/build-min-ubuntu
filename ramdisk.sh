#!/bin/sh

# set ramdisk
sudo cp /etc/fstab /etc/fstab.bak
cd /etc
sudo echo '' >> fstab
sudo echo 'tmpfs /tmp tmpfs noatime,size=256M 0 0' >> fstab
sudo echo 'tmpfs /var/tmp tmpfs noatime,size=256M 0 0' >> fstab
sudo echo 'tmpfs /var/log tmpfs noatime,size=256M 0 0' >> fstab
sudo echo 1 > /proc/sys/vm/swappiness
