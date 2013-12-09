#!/usr/bin/env bash
echo "System will install server features"
echo "System Upgrades repositories"
sudo apt-get update
echo "System install apache2"
sudo apt-get install apache2 -y
echo "System install PHP5"
sudo apt-get install php5 -y
echo "system install libraries"
sudo apt-get install libapache2-mod-auth-mysql -y
sudo apt-get install php5-mysql -y
sudo apt-get install php5-memcache -y
echo "system enables modules"
sudo a2enmod mem_cache
echo "system restart apache2 service"
echo "SRV1" > /etc/hostname
touch /var/www/test.php
chmod a+rw /var/www/test.php
echo "
<?php
phpinfo();
?>">/var/www/test.php
sudo echo "127.0.0.1 NMC"> /etc/hosts
sudo service apache2 restart
sudo reboot
