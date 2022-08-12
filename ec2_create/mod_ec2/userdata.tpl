#!/bin/bash

# Passwd login enable
sed -i s/PasswordAuthentication\ no/PasswordAuthentication\ yes/g /etc/ssh/sshd_config

# Root Login enable
sed -i s/\#PermitRootLogin\ yes/PermitRootLogin\ yes/g /etc/ssh/sshd_config

# root passwd change
echo 'Jeju@ir12' | passwd root --stdin

# because selinux config is default disabled, so ssh port change
sed -i s/\#Port\ 22/Port\ 2302/g /etc/ssh/sshd_config

# service restart
systemctl restart sshd

# Docker install
yum install -y docker

# docker-compose install
wget https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) 
sudo mv docker-compose-$(uname -s)-$(uname -m) /usr/local/bin/docker-compose
sudo chmod -v +x /usr/local/bin/docker-compose

# ec2-instance-connect
yum install ec2-instance-connect
