#!/bin/sh
echo "开始部署本章实验环境...";sleep 1
echo ""
sudo useradd -m -p '$1$9a68uL1J$HmdRjzfqKx4F6WBRAMC1d/' -s /bin/bash tomcat-syl
echo "将假设已通过渗透测试获取到普通用户 tomcat-syl 权限的初始 shell，接下来你需要尝试从低权限用户 tomcat-syl 提权到 root 用户"
echo ""
echo "提示："
echo "1. 不知道 tomcat-syl、root 用户密码，不要尝试暴力破解"
echo "2. 不要切换到 shiyanlou 用户"
echo "3. tomcat-syl 用户不具有 sudu 权限"
sudo chmod 317 /etc/passwd
sudo chgrp tomcat-syl /etc/shadow
echo "--------------------"
echo "初始化完成,祝实验愉快~"
sudo su tomcat-syl
