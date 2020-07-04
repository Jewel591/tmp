#!/bin/sh
echo "开始部署本章实验环境...";sleep 1
echo "初始化场景二...";sleep 1
echo ""
sudo sed -i '1c root:$1$ignite$HotZiAICtJ21HlPPjATHY/:0:0:root:/root:/bin/bash' /etc/passwd
#create user if not exists
id tomcat-syl >& /dev/null
if [ $? -ne 0 ]
then
   sudo useradd -m -p '$1$9a68uL1J$HmdRjzfqKx4F6WBRAMC1d/' -s /bin/bash tomcat-syl
fi

sudo chmod 644 /etc/passwd
sudo chgrp root /etc/shadow
echo "--------------------"
echo "初始化完成，你即将切换为 tomcat-syl 用户，祝实验愉快~"
sudo su tomcat-syl

