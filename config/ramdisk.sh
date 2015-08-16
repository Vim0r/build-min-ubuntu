#!/bin/sh

# set ramdisk
sudo cp /etc/fstab /etc/fstab.bak
sudo echo 'tmpfs /tmp tmpfs noatime,size=256M 0 0' >> /etc/fstab
sudo echo 'tmpfs /var/tmp tmpfs noatime,size=256M 0 0' >> /etc/fstab
sudo echo 'tmpfs /var/log tmpfs noatime,size=256M 0 0' >> /etc/fstab
