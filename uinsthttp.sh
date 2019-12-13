#!/bin/bash
sudo systemctl disable httpd
echo "httpd will no longer try to start upon boot
"
sudo firewall-cmd --permanent --remove-service=http
sudo firewall-cmd --reload
echo "http traffic is no longer allowed in through machine's firewall
"
sudo yum -y remove apr
sudo yum -y mailcap
echo "httpd and all installed dependencies should be uninstalled
"
