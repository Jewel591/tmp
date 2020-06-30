sudo apt install netcat -y
sudo rm /etc/alternatives/nc && sudo ln -s /bin/nc.traditional /etc/alternatives/nc
echo "--------------------"
echo "start listen 5911 port..."
nc -lnvp 5911
