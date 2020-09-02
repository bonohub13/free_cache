#!/bin/sh
# -*- coding:utf-8 -*-


echo "Copy \"free_cache.bash\" under /root and add executable permission..."
echo "Permit? [Y/N]"
read permit
if [ $permit = "Y" -o $permit = "y" ];then
    sudo cp free_cache.bash /root
    echo "Adding executable permission to \"free_cache.bash\"..."
    sudo chmod a+x /root/free_cache.bash
elif [ $permit = "N" -o $permit = "n" ];then
    echo "Canceled process."
else
    echo "Error: Invalid input. Expecting either of [Y/N]"
fi

echo "Running crontab under root."
echo "Permit? [Y/N]"
read permit
if [ $permit = "Y" -o $permit = "y" ];then
    sudo crontab -e
elif [ $permit = "N" -o $permit = "n" ];then
    echo "Canceled process."
else
    echo "Error: Invalid input. Expecting either if [Y/N]"
fi