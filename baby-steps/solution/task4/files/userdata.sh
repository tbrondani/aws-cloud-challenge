#!/bin/bash

# update the OS and install packages
sudo yum update -y
sudo yum install -y httpd amazon-ssm-agent

# start the SSM agent and Apache
sudo systemctl start amazon-ssm-agent
sudo systemctl start httpd

# create a new file for the default Apache web page
echo "You did it" | sudo tee /var/www/html/index.html


