#!/bin/sh
# set ramdisk
rm -rf ~/.mozilla/firefox/'Crash Reports' ~/.cache
ln -sT /tmp ~/.mozilla/firefox/'Crash Reports'
ln -sT /tmp ~/.cache
# set path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin/:/sbin:/bin:/usr/game:$PATH
