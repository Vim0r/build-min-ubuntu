#!/bin/sh
# set ramdisk
rm -rf ~/.cache
ln -sT /tmp ~/.cache
# set path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin/:/sbin:/bin:/usr/game:$PATH
