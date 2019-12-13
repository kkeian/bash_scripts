#!/bin/bash
sudo yum -y install httpd
echo "httpd is now installed with all required dependencies
"
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload
echo "http traffic is now allowed through machine's firewall
"
sudo systemctl enable httpd
echo "httpd will now try to start automatically each time you boot this machine
"
