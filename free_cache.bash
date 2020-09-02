#!/bin/bash
# -*- coding:utf-8 -*-

current_cache=$(free | grep Mem | sed -r -e "s/[^ ]+ +[^ ]+ +[^ ]+ +[^ ]+ +[^ ]+ +([^ ]+)+ +[^ ]+/\1/")
mem_limit=6000000000 # default to 6GB
if [ $# -gt 0 ];then
    if [ -n $1 -a $1 -gt 1000000000 ];then # clears
        mem_limit=$1
    fi
fi

if [ $current_cache -gt $mem_limit ];then
    sync; echo 1 > /proc/sys/vm/drop_caches
fi