#!/usr/bin/env bash

echo "System will install server features"


echo "System Upgrades repositories"
sudo apt-get update
echo "System install apache2"
sudo apt-get install apache2 -y
sudo echo "127.0.0.1 NMC"> /etc/hosts
echo "System install PHP5"
sudo apt-get install php5 -y
echo "system install libraries"
sudo apt-get install libapache2-mod-auth-mysql -y
sudo apt-get install php5-mysql -y
sudo apt-get install php5-memcache -y
echo "system enables modules"
sudo a2enmod proxy_balancer
sudo a2enmod mem_cache
echo "system restart apache2 service"
sudo service apache2 restart
echo "LB0" > /etc/hostname
sudo reboot
