#!/bin/sh

# ======How to install===========
### download utorrent-server from https://www.utorrent.com/intl/zh_cn/downloads/linux
# cd ~/download
# tar -xzf utorrent*.tar.gz
# sudo chmod 776 utorrent*/*
# mv utorrent* .utserver
# mv .utserver ~/.utserver
# nano utorrent.sh
### cope ALL TEXT to the file
# chmod 777 ~/.utserver/utorrent.sh
# nano ~/.utserver/utserver.conf
###----cope text below without # -------
# ut_webui_port 8080
# dir_active ~
# dir_torrent_files ~/btfiles/
# bind_port 37455
# token_auth_disable
# ---------end copy to utserver.conf------

# ======How to use===========
# sh ~/.utserver/utorrent.sh
### open url=http://localhost:8080/gui/web/index.html
### default usrname=admin
### no passwd

cd ~/.utserver
./utserver &
