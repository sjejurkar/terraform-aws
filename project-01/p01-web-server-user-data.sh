#! /bin/bash
apt update && apt -y upgrade
apt install -y apache2
systemctl enable apache2.service
systemctl start apache2.service
echo "<h1>Welcome to Sameer DEV - $(hostname -f) </h1>" > /var/www/html/index.html