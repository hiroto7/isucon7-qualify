#!/bin/bash

set -e

# checkout main
git fetch origin
git reset --hard origin/master

# nginx のログを削除
echo ":: CLEAR LOGS       ====>"
sudo truncate -s 0 -c /var/log/nginx/access.log

# 各種サービスの再起動
echo
echo ":: RESTART SERVICES ====>"
sudo mysqladmin flush-logs
sudo systemctl restart mysql
sudo systemctl restart isubata.golang
sudo systemctl restart nginx

sleep 5

# ベンチマークの実行
echo
echo ":: BENCHMARK        ====>"
/home/isucon/isubata/bench/bin/bench

# alp で解析
echo
echo ":: ACCESS LOG       ====>"
sudo cat /var/log/nginx/access.log | alp ltsv -m "/api/schedules/[0-9a-zA-Z]+" --sort avg -r

