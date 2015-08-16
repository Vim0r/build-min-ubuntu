#!/bin/sh

# ======How to use===========
# download utorrent-server from https://www.utorrent.com/intl/zh_cn/downloads/linux
# cd ~/download
# tar -xzf utorrent*.tar.gz
# sudo chmod 776 utorrent*/*
# mv utorrent* .utserver
# mv .utserver ~/.utserver
# nano utorrent.sh
# cope ALL TEXT to the file

cd ~/.utserver
./utserver &
