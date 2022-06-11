#! /bin/sh set -e

sudo rm /var/log/mysql/slow.log
sudo mysqladmin flush-logs
sudo systemctl restart mysql

sudo systemctl restart isubata.golang

