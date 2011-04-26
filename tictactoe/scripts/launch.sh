#!/bin/bash
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
white="\033[1;37m"
nc="\033[0m"

silent () {
    ($@ 2>&1 > /dev/null) 2>&1 > /dev/null
}

simplekill () {
    silent kill -9 `ps aux | egrep -i $1 | egrep -v "(grep)" | awk '{ print $2 }'`
}

if [ -e supervisord.conf ]; then
    printf $green
    echo "Starting up..."
    simplekill 'supervisor(d|ctl)'
    silent supervisord -c supervisord.conf
    mkdir -p logs

    printf $nc
    python ../manage.py runserver $@
else
    printf $red
    echo "Could not find supervisord.conf"
    printf $nc
fi;
