#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y




# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

sudo apt-get install nginx -y

# remove the old file and add our one

sudo systemctl start nginx
sudo unlink /etc/nginx/sites-enabled/default
sudo ln -s /home/ubuntu/environment/reverse_proxy.conf /etc/nginx/sites-enabled/reverse_proxy.conf
sleep 10
sudo systemctl reload-or-restart nginx
sleep 10
sudo systemctl reload-or-restart nginx

# finally, restart the nginx service so the new config takes hold
sudo service nginx configtest
sudo service nginx restart
