#!/bin/sh

today=$(date -Idate)
cp /tmp/${today}.log /var/www/parltrack/logs/${today}.log
./lf.py html warn < /var/www/parltrack/logs/${today}.log >/var/www/parltrack/logs/${today}.html
lzip -9 /var/www/parltrack/logs/${today}.log
