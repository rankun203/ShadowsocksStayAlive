#!/usr/bin/env bash

# random number
num=$(( ( RANDOM % 10 )  + 1 ))

echo "`date` ssserver #${num} running" >> /home/rankun203/git/dotfiles/extra/scripts/shadowsocks_tasks/cron.log

sudo killall ssserver
sudo nohup ssserver -c /home/rankun203/git/dotfiles/conf/config.json >> /home/rankun203/git/dotfiles/extra/scripts/shadowsocks_tasks/ssserver.log &

