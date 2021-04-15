#!/bin/bash
wget https://www.dotdeb.org/dotdeb.gpg
sudo apt-key add dotdeb.gpg
sudo sh -c "echo 'deb http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list"
sudo sh -c "echo 'deb-src http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list"
sudo apt-get update
sudo apt-get install -y php
sudo systemctl restart apache2
php -v