#!/bin/bash
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
white="\033[1;37m"
nc="\033[0m"

if [ -e supervisord.conf ]; then
    printf $green
    echo "Starting up..."
    printf $nc

    mkdir -p logs
    supervisord -c supervisord.conf -n
else
    printf $red
    echo "Could not find supervisord.conf"
    printf $nc
fi;
