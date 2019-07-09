#!/bin/bash

echo "--------------------------------"
echo "---- Installing Dependancies ---"
echo "--------------------------------"
sudo yum update -y

sudo yum install py-pip python-dev libffi-dev openssl-dev gcc libc-dev make -y


echo "--------------------------------"
echo "---- Installing Docker ---------"
echo "--------------------------------"


sudo amazon-linux-extras install docker -y


sudo service docker start


sudo usermod -a -G docker ec2-user



echo "--------------------------------"
echo "-- Installing Docker Compose ---"
echo "--------------------------------"

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose


sudo chmod +x /usr/local/bin/docker-compose



echo "--------------------------------"
echo "---- Reconnect to Instance.. ---"
echo "--------------------------------"


exit


