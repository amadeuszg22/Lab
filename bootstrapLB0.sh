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
sudo echo "<VirtualHost *:80>
	ServerAdmin webmaster@localhost

	DocumentRoot /webfiles/
	<Directory />
		Options FollowSymLinks
		AllowOverride None
	</Directory>
	<Directory /webfiles/>
		Options Indexes FollowSymLinks MultiViews
		AllowOverride None
		Order allow,deny
		allow from all
	</Directory>

	ScriptAlias /cgi-bin/ /usr/lib/cgi-bin/
	<Directory "/usr/lib/cgi-bin">
		AllowOverride None
		Options +ExecCGI -MultiViews +SymLinksIfOwnerMatch
		Order allow,deny
		Allow from all
	</Directory>

	ErrorLog ${APACHE_LOG_DIR}/error.log

	# Possible values include: debug, info, notice, warn, error, crit,
	# alert, emerg.
	LogLevel warn

	CustomLog ${APACHE_LOG_DIR}/access.log combined

    Alias /doc/ "/usr/share/doc/"
    <Directory "/usr/share/doc/">
        Options Indexes MultiViews FollowSymLinks
        AllowOverride None
        Order deny,allow
        Deny from all
        Allow from 127.0.0.0/255.0.0.0 ::1/128
    </Directory>

</VirtualHost>">/etc/apache2/sites-enabled/NMC
rm /etc/apache2/sites-enabled/000-default
echo "SRV" > /etc/hostname
sudo echo "127.0.0.1 NMC"> /etc/hosts
sudo service apache2 restart
sudo apt-get install portmap nfs-common -y
sudo mkdir /webfiles
sudo echo "192.168.10.10:/var/www/ /webfiles nfs rsize=8192,wsize=8192,timeo=14,intr">>/etc/fstab
echo "System install mysql-server"
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password 123'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password 123'
sudo apt-get install mysql-server -y
sudo apt-get install git -y
sudo git clone https://github.com/amadeuszg22/Lab.git /LAB/

sudo reboot
